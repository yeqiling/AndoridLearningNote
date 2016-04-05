.class public Lcom/boohee/record/CopyRecordActivity;
.super Lcom/boohee/main/GestureActivity;
.source "CopyRecordActivity.java"


# static fields
.field private static final KEY_COPY_DATE:Ljava/lang/String; = "key_copy_date"

.field private static final KEY_DATE:Ljava/lang/String; = "key_date"


# instance fields
.field private breakfastCount:I

.field private breakfastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private copyCount:I

.field private copyDietList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private copyFlag:I

.field private copy_date:Ljava/lang/String;

.field private dinnerCount:I

.field private dinnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field ll_card_breakfast:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0100
    .end annotation
.end field

.field ll_card_dinner:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0104
    .end annotation
.end field

.field ll_card_lunch:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0102
    .end annotation
.end field

.field ll_card_snacks_breakfast:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0101
    .end annotation
.end field

.field ll_card_snacks_dinner:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0105
    .end annotation
.end field

.field ll_card_snacks_lunch:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0103
    .end annotation
.end field

.field ll_card_sport:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0106
    .end annotation
.end field

.field private lunchCount:I

.field private lunchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageBadge:Lcom/boohee/myview/NewBadgeView;

.field private record_on:Ljava/lang/String;

.field private requestFlag:I

.field private snacksBreakfastCount:I

.field private snacksBreakfastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private snacksDinnerCount:I

.field private snacksDinnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private snacksLunchCount:I

.field private snacksLunchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private sportCount:I

.field private sportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;"
        }
    .end annotation
.end field

.field tb_check_all:Landroid/widget/ToggleButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0108
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastList:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->lunchList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->copyDietList:Ljava/util/ArrayList;

    .line 83
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastCount:I

    .line 84
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->lunchCount:I

    .line 85
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerCount:I

    .line 86
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastCount:I

    .line 87
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchCount:I

    .line 88
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerCount:I

    .line 90
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->sportCount:I

    .line 93
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyCount:I

    .line 94
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    .line 95
    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->requestFlag:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/CopyRecordActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/boohee/record/CopyRecordActivity;->initDietData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/record/CopyRecordActivity;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/boohee/record/CopyRecordActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/boohee/record/CopyRecordActivity;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/boohee/record/CopyRecordActivity;->setDietAllIsChecked(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/boohee/record/CopyRecordActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->isAllChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/boohee/record/CopyRecordActivity;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/boohee/record/CopyRecordActivity;->setSportAllIsChecked(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/boohee/record/CopyRecordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->copySuccess()V

    return-void
.end method

.method static synthetic access$1600(Lcom/boohee/record/CopyRecordActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    return v0
.end method

.method static synthetic access$1700(Lcom/boohee/record/CopyRecordActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/record/CopyRecordActivity;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->lunchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/record/CopyRecordActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/record/CopyRecordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->requestFinish()V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/record/CopyRecordActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/boohee/record/CopyRecordActivity;->initSportData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private addToCopyDietList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, foodList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->copyDietList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 508
    :cond_0
    return-void
.end method

.method private checkAll(Z)V
    .locals 3
    .parameter "isCheckAll"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/boohee/record/CopyRecordActivity;->setDietAllIsChecked(Ljava/util/ArrayList;Z)V

    .line 561
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->lunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/boohee/record/CopyRecordActivity;->setDietAllIsChecked(Ljava/util/ArrayList;Z)V

    .line 562
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/boohee/record/CopyRecordActivity;->setDietAllIsChecked(Ljava/util/ArrayList;Z)V

    .line 563
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/boohee/record/CopyRecordActivity;->setDietAllIsChecked(Ljava/util/ArrayList;Z)V

    .line 564
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/boohee/record/CopyRecordActivity;->setDietAllIsChecked(Ljava/util/ArrayList;Z)V

    .line 565
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/boohee/record/CopyRecordActivity;->setDietAllIsChecked(Ljava/util/ArrayList;Z)V

    .line 566
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/boohee/record/CopyRecordActivity;->setSportAllIsChecked(Ljava/util/ArrayList;Z)V

    .line 567
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity;->ll_card_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 568
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->lunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity;->ll_card_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 569
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity;->ll_card_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 570
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity;->ll_card_snacks_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 571
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity;->ll_card_snacks_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 572
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity;->ll_card_snacks_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/record/CopyRecordActivity;->initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 573
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->ll_card_sport:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/boohee/record/CopyRecordActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 574
    return-void
.end method

.method private copyActivity()V
    .locals 4

    .prologue
    .line 639
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 640
    :cond_0
    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    .line 672
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/boohee/record/CopyRecordActivity;->recordSportToCopySport(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 644
    .local v0, copyLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/CopySport;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 645
    :cond_2
    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    goto :goto_0

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/boohee/record/CopyRecordActivity;->showLoading()V

    .line 649
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/record/CopyRecordActivity$8;

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/record/CopyRecordActivity$8;-><init>(Lcom/boohee/record/CopyRecordActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->batchCopyActivity(Ljava/util/ArrayList;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private copyEating()V
    .locals 4

    .prologue
    .line 594
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyDietList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 595
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/boohee/record/CopyRecordActivity;->addToCopyDietList(Ljava/util/ArrayList;)V

    .line 596
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->lunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/boohee/record/CopyRecordActivity;->addToCopyDietList(Ljava/util/ArrayList;)V

    .line 597
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/boohee/record/CopyRecordActivity;->addToCopyDietList(Ljava/util/ArrayList;)V

    .line 598
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/boohee/record/CopyRecordActivity;->addToCopyDietList(Ljava/util/ArrayList;)V

    .line 599
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/boohee/record/CopyRecordActivity;->addToCopyDietList(Ljava/util/ArrayList;)V

    .line 600
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/boohee/record/CopyRecordActivity;->addToCopyDietList(Ljava/util/ArrayList;)V

    .line 601
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyDietList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyDietList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 602
    :cond_0
    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    .line 633
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyDietList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/boohee/record/CopyRecordActivity;->recordFoodToCopyFood(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 606
    .local v0, copyLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/CopyFood;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 607
    :cond_2
    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    goto :goto_0

    .line 610
    :cond_3
    invoke-virtual {p0}, Lcom/boohee/record/CopyRecordActivity;->showLoading()V

    .line 611
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/record/CopyRecordActivity$7;

    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/record/CopyRecordActivity$7;-><init>(Lcom/boohee/record/CopyRecordActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->batchCopyEating(Ljava/util/ArrayList;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private copySuccess()V
    .locals 4

    .prologue
    .line 679
    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    .line 680
    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/boohee/record/CopyRecordActivity;->dismissLoading()V

    .line 682
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/ConstEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/ConstEvent;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/ConstEvent;->setFlag(I)Lcom/boohee/one/event/ConstEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 683
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 684
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 685
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 686
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/BaseActivity;->finish()V

    .line 688
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getActivities()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->record_on:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/record/CopyRecordActivity;->showLoading()V

    .line 175
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->record_on:Ljava/lang/String;

    new-instance v1, Lcom/boohee/record/CopyRecordActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/boohee/record/CopyRecordActivity$2;-><init>(Lcom/boohee/record/CopyRecordActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/RecordApi;->getActivities(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getDietItemView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)Landroid/view/View;
    .locals 11
    .parameter "time_type"
    .parameter
    .parameter "ll_card"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p2, foodRcordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    const/4 v7, 0x0

    .line 306
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    .line 307
    .local v3, recordFood:Lcom/boohee/model/RecordFood;
    if-nez v3, :cond_0

    .line 331
    :goto_0
    return-object v7

    .line 308
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030128

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 309
    .local v7, itemView:Landroid/view/View;
    const v0, 0x7f0e03d1

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 310
    .local v2, tb_meal:Landroid/widget/ToggleButton;
    const v0, 0x7f0e00d3

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 311
    .local v9, tv_name:Landroid/widget/TextView;
    const v0, 0x7f0e00d6

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 312
    .local v8, tv_calory:Landroid/widget/TextView;
    const v0, 0x7f0e01a9

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 313
    .local v10, view_divide:Landroid/view/View;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p4, v0, :cond_1

    .line 314
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 315
    :cond_1
    iget-object v0, v3, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v3, Lcom/boohee/model/RecordFood;->calory:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5343\u5361"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-boolean v0, v3, Lcom/boohee/model/RecordFood;->isChecked:Z

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 318
    new-instance v0, Lcom/boohee/record/CopyRecordActivity$4;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/boohee/record/CopyRecordActivity$4;-><init>(Lcom/boohee/record/CopyRecordActivity;Landroid/widget/ToggleButton;Lcom/boohee/model/RecordFood;ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private getEatings()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->record_on:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/record/CopyRecordActivity;->showLoading()V

    .line 148
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->record_on:Ljava/lang/String;

    new-instance v1, Lcom/boohee/record/CopyRecordActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/record/CopyRecordActivity$1;-><init>(Lcom/boohee/record/CopyRecordActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/RecordApi;->getEatings(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getSportItemView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;I)Landroid/view/View;
    .locals 10
    .parameter
    .parameter "ll_card"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, sportRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    const/4 v6, 0x0

    .line 412
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordSport;

    .line 413
    .local v3, recordSport:Lcom/boohee/model/RecordSport;
    if-nez v3, :cond_0

    .line 437
    :goto_0
    return-object v6

    .line 414
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030128

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 415
    .local v6, itemView:Landroid/view/View;
    const v0, 0x7f0e00d3

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 416
    .local v8, tv_name:Landroid/widget/TextView;
    const v0, 0x7f0e03d1

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 417
    .local v2, tb_meal:Landroid/widget/ToggleButton;
    iget-boolean v0, v3, Lcom/boohee/model/RecordSport;->isChecked:Z

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 418
    const v0, 0x7f0e00d6

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 419
    .local v7, tv_calory:Landroid/widget/TextView;
    const v0, 0x7f0e01a9

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 420
    .local v9, view_divide:Landroid/view/View;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 421
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_1
    iget-object v0, v3, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v3, Lcom/boohee/model/RecordSport;->calory:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5343\u5361"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    new-instance v0, Lcom/boohee/record/CopyRecordActivity$6;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/boohee/record/CopyRecordActivity$6;-><init>(Lcom/boohee/record/CopyRecordActivity;Landroid/widget/ToggleButton;Lcom/boohee/model/RecordSport;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "key_date"

    invoke-virtual {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->record_on:Ljava/lang/String;

    .line 106
    const-string v0, "key_copy_date"

    invoke-virtual {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->copy_date:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private initDietCardView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 12
    .parameter "time_type"
    .parameter
    .parameter "ll_card"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    .local p2, foodRcordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    const v0, 0x7f0e06b6

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 240
    .local v8, rl_meal:Landroid/widget/RelativeLayout;
    const v0, 0x7f0e06b7

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 241
    .local v2, tb_time_type:Landroid/widget/ToggleButton;
    const v0, 0x7f0e06b8

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 242
    .local v10, tv_time_type:Landroid/widget/TextView;
    const v0, 0x7f0e043c

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 243
    .local v7, ll_list:Landroid/widget/LinearLayout;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 244
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastCount:I

    .line 286
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->refreshCount()V

    .line 287
    new-instance v0, Lcom/boohee/record/CopyRecordActivity$3;

    move-object v1, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/boohee/record/CopyRecordActivity$3;-><init>(Lcom/boohee/record/CopyRecordActivity;Landroid/widget/ToggleButton;Ljava/util/ArrayList;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    return-void

    .line 247
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/record/CopyRecordActivity;->lunchCount:I

    goto :goto_0

    .line 249
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerCount:I

    goto :goto_0

    .line 251
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastCount:I

    goto :goto_0

    .line 253
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchCount:I

    goto :goto_0

    .line 255
    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerCount:I

    goto :goto_0

    .line 259
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 261
    invoke-direct {p0, p2}, Lcom/boohee/record/CopyRecordActivity;->isDietChecked(Ljava/util/ArrayList;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 262
    invoke-static {p0, p1}, Lcom/boohee/utils/FoodUtils;->getDietName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const/4 v9, 0x0

    .line 264
    .local v9, totalCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_a

    .line 265
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/RecordFood;

    iget-boolean v0, v0, Lcom/boohee/model/RecordFood;->isChecked:Z

    if-eqz v0, :cond_8

    .line 266
    add-int/lit8 v9, v9, 0x1

    .line 267
    :cond_8
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/boohee/record/CopyRecordActivity;->getDietItemView(ILjava/util/ArrayList;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v11

    .line 268
    .local v11, view:Landroid/view/View;
    if-eqz v11, :cond_9

    .line 269
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 272
    .end local v11           #view:Landroid/view/View;
    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 273
    iput v9, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastCount:I

    goto :goto_0

    .line 274
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 275
    iput v9, p0, Lcom/boohee/record/CopyRecordActivity;->lunchCount:I

    goto :goto_0

    .line 276
    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 277
    iput v9, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerCount:I

    goto :goto_0

    .line 278
    :cond_d
    const/4 v0, 0x6

    if-ne p1, v0, :cond_e

    .line 279
    iput v9, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastCount:I

    goto :goto_0

    .line 280
    :cond_e
    const/4 v0, 0x7

    if-ne p1, v0, :cond_f

    .line 281
    iput v9, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchCount:I

    goto/16 :goto_0

    .line 282
    :cond_f
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 283
    iput v9, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerCount:I

    goto/16 :goto_0
.end method

.method private initDietData(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 198
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/boohee/model/RecordFood;

    invoke-static {v3, v4}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 199
    .local v2, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 201
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/RecordFood;

    .line 202
    .local v1, recordFood:Lcom/boohee/model/RecordFood;
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 203
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 205
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->lunchList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_2
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 207
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_3
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 209
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_4
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_5

    .line 211
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_5
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 213
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    .end local v0           #i:I
    .end local v1           #recordFood:Lcom/boohee/model/RecordFood;
    :cond_6
    return-void
.end method

.method private initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 9
    .parameter
    .parameter "ll_card"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, recordSportList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    const/4 v8, 0x0

    .line 369
    const v7, 0x7f0e06b6

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 370
    .local v2, rl_time_type:Landroid/widget/RelativeLayout;
    const v7, 0x7f0e06b8

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 371
    .local v5, tv_time_type:Landroid/widget/TextView;
    const v7, 0x7f0e06b7

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 372
    .local v3, tb_time_type:Landroid/widget/ToggleButton;
    const v7, 0x7f0e043c

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 373
    .local v1, ll_list:Landroid/widget/LinearLayout;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 374
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iput v8, p0, Lcom/boohee/record/CopyRecordActivity;->sportCount:I

    .line 392
    :goto_0
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->refreshCount()V

    .line 393
    new-instance v7, Lcom/boohee/record/CopyRecordActivity$5;

    invoke-direct {v7, p0, v3, p1, p2}, Lcom/boohee/record/CopyRecordActivity$5;-><init>(Lcom/boohee/record/CopyRecordActivity;Landroid/widget/ToggleButton;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    return-void

    .line 377
    :cond_1
    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 379
    invoke-direct {p0, p1}, Lcom/boohee/record/CopyRecordActivity;->isSportChecked(Ljava/util/ArrayList;)Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 380
    const-string v7, "\u8fd0\u52a8"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const/4 v4, 0x0

    .line 382
    .local v4, totalCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 383
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/boohee/model/RecordSport;

    iget-boolean v7, v7, Lcom/boohee/model/RecordSport;->isChecked:Z

    if-eqz v7, :cond_2

    .line 384
    add-int/lit8 v4, v4, 0x1

    .line 385
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/boohee/record/CopyRecordActivity;->getSportItemView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;I)Landroid/view/View;

    move-result-object v6

    .line 386
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 387
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    .end local v6           #view:Landroid/view/View;
    :cond_4
    iput v4, p0, Lcom/boohee/record/CopyRecordActivity;->sportCount:I

    goto :goto_0
.end method

.method private initSportData(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 225
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 226
    const-string v3, "data"

    invoke-static {p1, v3}, Lcom/boohee/model/RecordSport;->parseList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 227
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordSport;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 229
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    .line 230
    .local v2, sportFood:Lcom/boohee/model/RecordSport;
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0           #i:I
    .end local v2           #sportFood:Lcom/boohee/model/RecordSport;
    :cond_0
    return-void
.end method

.method private initToolsBar()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 125
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0301e1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, toolbar_diet_sport:Landroid/view/View;
    const v3, 0x7f0e031c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    .local v2, txt_date:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->record_on:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/boohee/record/CopyRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 129
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 130
    .local v0, layoutParams:Landroid/support/v7/app/ActionBar$LayoutParams;
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/high16 v4, 0x4240

    invoke-static {v3, v4}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/support/v7/app/ActionBar$LayoutParams;->setMargins(IIII)V

    .line 131
    invoke-virtual {p0}, Lcom/boohee/record/CopyRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 132
    return-void

    .line 127
    .end local v0           #layoutParams:Landroid/support/v7/app/ActionBar$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->record_on:Ljava/lang/String;

    goto :goto_0
.end method

.method private intBadgeView()V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Lcom/boohee/myview/NewBadgeView;

    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v0, v1}, Lcom/boohee/myview/NewBadgeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;

    .line 136
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;

    const v1, 0x7f0e010b

    invoke-virtual {p0, v1}, Lcom/boohee/record/CopyRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewBadgeView;->setTargetView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewBadgeView;->setBadgeGravity(I)V

    .line 138
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewBadgeView;->setTextColor(I)V

    .line 139
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/boohee/record/CopyRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/myview/NewBadgeView;->setBackground(II)V

    .line 140
    return-void
.end method

.method private isAllChecked()Z
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->isDietChecked(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->lunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->isDietChecked(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->isDietChecked(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->isDietChecked(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->isDietChecked(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->isDietChecked(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->sportList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->isSportChecked(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDietChecked(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, foodRcordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 356
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 357
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/RecordFood;

    iget-boolean v1, v1, Lcom/boohee/model/RecordFood;->isChecked:Z

    if-nez v1, :cond_0

    .line 358
    const/4 v1, 0x0

    .line 362
    .end local v0           #i:I
    :goto_1
    return v1

    .line 356
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isSportChecked(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, sportList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 462
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/RecordSport;

    iget-boolean v1, v1, Lcom/boohee/model/RecordSport;->isChecked:Z

    if-nez v1, :cond_0

    .line 463
    const/4 v1, 0x0

    .line 466
    :goto_1
    return v1

    .line 461
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private recordFoodToCopyFood(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CopyFood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, foodList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v1, copyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/CopyFood;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 519
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    iget-boolean v3, v3, Lcom/boohee/model/RecordFood;->isChecked:Z

    if-nez v3, :cond_0

    .line 518
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    :cond_0
    new-instance v0, Lcom/boohee/model/CopyFood;

    invoke-direct {v0}, Lcom/boohee/model/CopyFood;-><init>()V

    .line 521
    .local v0, copyFood:Lcom/boohee/model/CopyFood;
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->copy_date:Ljava/lang/String;

    iput-object v3, v0, Lcom/boohee/model/CopyFood;->record_on:Ljava/lang/String;

    .line 522
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    iget-object v3, v3, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    iput-object v3, v0, Lcom/boohee/model/CopyFood;->code:Ljava/lang/String;

    .line 523
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    iget-object v3, v3, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    iput-object v3, v0, Lcom/boohee/model/CopyFood;->food_name:Ljava/lang/String;

    .line 524
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    iget v3, v3, Lcom/boohee/model/RecordFood;->food_unit_id:I

    iput v3, v0, Lcom/boohee/model/CopyFood;->food_unit_id:I

    .line 525
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    iget v3, v3, Lcom/boohee/model/RecordFood;->amount:F

    iput v3, v0, Lcom/boohee/model/CopyFood;->amount:F

    .line 526
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    iget v3, v3, Lcom/boohee/model/RecordFood;->calory:F

    iput v3, v0, Lcom/boohee/model/CopyFood;->calory:F

    .line 527
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    iget-object v3, v3, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    iput-object v3, v0, Lcom/boohee/model/CopyFood;->unit_name:Ljava/lang/String;

    .line 528
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    iget v3, v3, Lcom/boohee/model/RecordFood;->time_type:I

    iput v3, v0, Lcom/boohee/model/CopyFood;->time_type:I

    .line 529
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    .end local v0           #copyFood:Lcom/boohee/model/CopyFood;
    :cond_1
    return-object v1
.end method

.method private recordSportToCopySport(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CopySport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v0, copyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/CopySport;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 543
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordSport;

    iget-boolean v3, v3, Lcom/boohee/model/RecordSport;->isChecked:Z

    if-nez v3, :cond_0

    .line 542
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    :cond_0
    new-instance v1, Lcom/boohee/model/CopySport;

    invoke-direct {v1}, Lcom/boohee/model/CopySport;-><init>()V

    .line 545
    .local v1, copySport:Lcom/boohee/model/CopySport;
    iget-object v3, p0, Lcom/boohee/record/CopyRecordActivity;->copy_date:Ljava/lang/String;

    iput-object v3, v1, Lcom/boohee/model/CopySport;->record_on:Ljava/lang/String;

    .line 546
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordSport;

    iget v3, v3, Lcom/boohee/model/RecordSport;->activity_id:I

    iput v3, v1, Lcom/boohee/model/CopySport;->activity_id:I

    .line 547
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordSport;

    iget v3, v3, Lcom/boohee/model/RecordSport;->duration:F

    iput v3, v1, Lcom/boohee/model/CopySport;->duration:F

    .line 548
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordSport;

    iget-object v3, v3, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    iput-object v3, v1, Lcom/boohee/model/CopySport;->activity_name:Ljava/lang/String;

    .line 549
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordSport;

    iget v3, v3, Lcom/boohee/model/RecordSport;->calory:F

    iput v3, v1, Lcom/boohee/model/CopySport;->calory:F

    .line 550
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordSport;

    iget-object v3, v3, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    iput-object v3, v1, Lcom/boohee/model/CopySport;->unit_name:Ljava/lang/String;

    .line 551
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 553
    .end local v1           #copySport:Lcom/boohee/model/CopySport;
    :cond_1
    return-object v0
.end method

.method private refreshCount()V
    .locals 2

    .prologue
    .line 474
    iget v0, p0, Lcom/boohee/record/CopyRecordActivity;->breakfastCount:I

    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->lunchCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->dinnerCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksBreakfastCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksLunchCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->snacksDinnerCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->sportCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/boohee/record/CopyRecordActivity;->copyCount:I

    .line 475
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;

    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyCount:I

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewBadgeView;->setBadgeCount(I)V

    .line 476
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;

    iget v0, p0, Lcom/boohee/record/CopyRecordActivity;->copyCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    .line 477
    return-void

    .line 476
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private requestFinish()V
    .locals 2

    .prologue
    .line 691
    iget v0, p0, Lcom/boohee/record/CopyRecordActivity;->requestFlag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/record/CopyRecordActivity;->requestFlag:I

    .line 692
    iget v0, p0, Lcom/boohee/record/CopyRecordActivity;->requestFlag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/boohee/record/CopyRecordActivity;->dismissLoading()V

    .line 695
    :cond_0
    return-void
.end method

.method private setDietAllIsChecked(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "isChecked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, foodRcordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 342
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 343
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/RecordFood;

    iput-boolean p2, v1, Lcom/boohee/model/RecordFood;->isChecked:Z

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private setSportAllIsChecked(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "isChecked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, sportRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 448
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 449
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/RecordSport;

    iput-boolean p2, v1, Lcom/boohee/model/RecordSport;->isChecked:Z

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "record_on"
    .parameter "copy_date"

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/record/CopyRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, starter:Landroid/content/Intent;
    const-string v1, "key_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "key_copy_date"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0107,
            0x7f0e0109
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 497
    :goto_0
    :pswitch_0
    return-void

    .line 484
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/record/CopyRecordActivity;->tb_check_all:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/boohee/record/CopyRecordActivity;->tb_check_all:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 485
    iget-object v0, p0, Lcom/boohee/record/CopyRecordActivity;->tb_check_all:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->checkAll(Z)V

    goto :goto_0

    .line 488
    :pswitch_2
    iget v1, p0, Lcom/boohee/record/CopyRecordActivity;->copyCount:I

    if-nez v1, :cond_1

    .line 489
    const-string v0, "\u8bf7\u9009\u62e9\u590d\u5236\u5185\u5bb9"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    :cond_1
    iput v0, p0, Lcom/boohee/record/CopyRecordActivity;->copyFlag:I

    .line 493
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->copyEating()V

    .line 494
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->copyActivity()V

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x7f0e0107
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/boohee/record/CopyRecordActivity;->setContentView(I)V

    .line 113
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 114
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->handleIntent()V

    .line 115
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->initToolsBar()V

    .line 116
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->intBadgeView()V

    .line 118
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->refreshCount()V

    .line 119
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->getEatings()V

    .line 120
    invoke-direct {p0}, Lcom/boohee/record/CopyRecordActivity;->getActivities()V

    .line 121
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 699
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 700
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 701
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/ConstEvent;)V
    .locals 0
    .parameter "constEvent"

    .prologue
    .line 705
    return-void
.end method
