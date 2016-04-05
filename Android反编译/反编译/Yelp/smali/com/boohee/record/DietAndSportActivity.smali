.class public Lcom/boohee/record/DietAndSportActivity;
.super Lcom/boohee/main/GestureActivity;
.source "DietAndSportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;
    }
.end annotation


# static fields
.field public static final TIME_TYPE_BREAKFAST:I = 0x1

.field public static final TIME_TYPE_DINNER:I = 0x3

.field public static final TIME_TYPE_LUNCH:I = 0x2

.field public static final TIME_TYPE_SNACKS_BREAKFAST:I = 0x6

.field public static final TIME_TYPE_SNACKS_DINNER:I = 0x8

.field public static final TIME_TYPE_SNACKS_LUNCH:I = 0x7


# instance fields
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

.field private breakfastPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private budgetCalory:F

.field private canCalory:I

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

.field private dinnerPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private factory:Lcom/boohee/myview/MineHeadViewFactory;

.field private isLoseWeight:Z

.field ll_calory_distribute:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e011a
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

.field ll_nav_snacks:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0504
    .end annotation
.end field

.field ll_record:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e011b
    .end annotation
.end field

.field ll_record_null:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e011e
    .end annotation
.end field

.field ll_today_analysis:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e011c
    .end annotation
.end field

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

.field private lunchPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field protected mCache:Lcom/boohee/one/cache/FileCache;

.field mPopupWindow:Landroid/widget/PopupWindow;

.field private record_on:Ljava/lang/String;

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

.field private snacksBreakfastPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

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

.field private snacksDinnerPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

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

.field private snacksLunchPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

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

.field private totalBreakfastCalory:F

.field private totalDinnerCalory:F

.field private totalLunchCalory:F

.field private totalSnacksBreakfastCalory:F

.field private totalSnacksDinnerCalory:F

.field private totalSnacksLunchCalory:F

.field private totalSportCalory:F

.field txt_date:Landroid/widget/TextView;

.field private videoSportRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/VideoSportRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 106
    iput v0, p0, Lcom/boohee/record/DietAndSportActivity;->budgetCalory:F

    .line 107
    iput v0, p0, Lcom/boohee/record/DietAndSportActivity;->totalBreakfastCalory:F

    .line 108
    iput v0, p0, Lcom/boohee/record/DietAndSportActivity;->totalLunchCalory:F

    .line 109
    iput v0, p0, Lcom/boohee/record/DietAndSportActivity;->totalDinnerCalory:F

    .line 110
    iput v0, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksBreakfastCalory:F

    .line 111
    iput v0, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksLunchCalory:F

    .line 112
    iput v0, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksDinnerCalory:F

    .line 113
    iput v0, p0, Lcom/boohee/record/DietAndSportActivity;->totalSportCalory:F

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/record/DietAndSportActivity;->isLoseWeight:Z

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->videoSportRecords:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    .line 287
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/boohee/record/DietAndSportActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/boohee/record/DietAndSportActivity;->initSportData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/record/DietAndSportActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/boohee/record/DietAndSportActivity;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/boohee/record/DietAndSportActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/boohee/record/DietAndSportActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/boohee/record/DietAndSportActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/record/DietAndSportActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/record/DietAndSportActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/boohee/record/DietAndSportActivity;->initDietData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/record/DietAndSportActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/record/DietAndSportActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createGuidePopWindow()V
    .locals 3

    .prologue
    .line 879
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/database/OnePreference;->isGuideDiet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 880
    new-instance v0, Lcom/boohee/myview/GuidePopWindow;

    invoke-direct {v0}, Lcom/boohee/myview/GuidePopWindow;-><init>()V

    .line 881
    .local v0, guidePopWindow:Lcom/boohee/myview/GuidePopWindow;
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const v2, 0x7f020076

    invoke-virtual {v0, v1, v2}, Lcom/boohee/myview/GuidePopWindow;->init(Landroid/content/Context;I)V

    .line 882
    new-instance v1, Lcom/boohee/record/DietAndSportActivity$8;

    invoke-direct {v1, p0}, Lcom/boohee/record/DietAndSportActivity$8;-><init>(Lcom/boohee/record/DietAndSportActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/GuidePopWindow;->setOnGuideClickListener(Lcom/boohee/myview/GuidePopWindow$OnGuideClickListener;)V

    .line 888
    invoke-virtual {v0}, Lcom/boohee/myview/GuidePopWindow;->show()V

    .line 890
    .end local v0           #guidePopWindow:Lcom/boohee/myview/GuidePopWindow;
    :cond_0
    return-void
.end method

.method private createPopwindow(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v4, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/boohee/record/DietAndSportActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301ac

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 273
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 274
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 275
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 276
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 278
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 279
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 280
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    aget v3, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aget v4, v1, v6

    add-int/lit16 v4, v4, -0x15e

    invoke-virtual {v2, p1, v7, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 281
    const v2, 0x7f0e052d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;

    invoke-direct {v3, p0, v5}, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;-><init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/record/DietAndSportActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const v2, 0x7f0e052e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;

    invoke-direct {v3, p0, v5}, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;-><init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/record/DietAndSportActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v2, 0x7f0e052f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;

    invoke-direct {v3, p0, v5}, Lcom/boohee/record/DietAndSportActivity$OnSnacksClickListener;-><init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/record/DietAndSportActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    return-void
.end method

.method private getActivities()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/record/DietAndSportActivity;->showLoading()V

    .line 344
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    new-instance v1, Lcom/boohee/record/DietAndSportActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/boohee/record/DietAndSportActivity$2;-><init>(Lcom/boohee/record/DietAndSportActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/RecordApi;->getActivities(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getCacheTime()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 903
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 904
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v2, 0xb

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 905
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 906
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 907
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 908
    .local v1, time:I
    return v1
.end method

.method private getDietItemView(ILcom/boohee/model/RecordFood;Z)Landroid/view/View;
    .locals 9
    .parameter "index"
    .parameter "recordFood"
    .parameter "isLastest"

    .prologue
    const/4 v0, 0x0

    .line 587
    if-nez p2, :cond_0

    .line 610
    :goto_0
    return-object v0

    .line 588
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030222

    invoke-virtual {v6, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 589
    .local v0, itemView:Landroid/view/View;
    const v6, 0x7f0e01d8

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 590
    .local v1, iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    const v6, 0x7f0e0309

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 591
    .local v4, txt_name:Landroid/widget/TextView;
    const v6, 0x7f0e06b9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 592
    .local v3, txt_count:Landroid/widget/TextView;
    const v6, 0x7f0e030a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 593
    .local v2, txt_calory:Landroid/widget/TextView;
    const v6, 0x7f0e01a9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 596
    .local v5, view_divide:Landroid/view/View;
    iget-object v6, p0, Lcom/boohee/record/DietAndSportActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v7, p2, Lcom/boohee/model/RecordFood;->thumb_img_url:Ljava/lang/String;

    const v8, 0x7f020329

    invoke-static {v8}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v8

    invoke-virtual {v6, v7, v1, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 597
    iget-object v6, p2, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/boohee/model/RecordFood;->amount:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/boohee/model/RecordFood;->calory:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5343\u5361"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    new-instance v6, Lcom/boohee/record/DietAndSportActivity$6;

    invoke-direct {v6, p0, p2, p1}, Lcom/boohee/record/DietAndSportActivity$6;-><init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/model/RecordFood;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private getEatings()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/record/DietAndSportActivity;->showLoading()V

    .line 313
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    new-instance v1, Lcom/boohee/record/DietAndSportActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/record/DietAndSportActivity$1;-><init>(Lcom/boohee/record/DietAndSportActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/RecordApi;->getEatings(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getIndexFromList(Ljava/util/ArrayList;Lcom/boohee/model/RecordFood;)I
    .locals 4
    .parameter
    .parameter "recordFood"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Lcom/boohee/model/RecordFood;",
            ")I"
        }
    .end annotation

    .prologue
    .line 793
    .local p1, recordFoods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    const/4 v1, -0x1

    .line 794
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 795
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordFood;

    iget-object v2, v2, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    iget-object v3, p2, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordFood;

    iget-object v2, v2, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    iget-object v3, p2, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    .end local v0           #i:I
    :goto_1
    return v0

    .line 794
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 799
    goto :goto_1
.end method

.method private getIndexFromList(Ljava/util/ArrayList;Lcom/boohee/model/RecordSport;)I
    .locals 5
    .parameter
    .parameter "currentRecordSport"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;",
            "Lcom/boohee/model/RecordSport;",
            ")I"
        }
    .end annotation

    .prologue
    .line 846
    .local p1, recordSports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    const/4 v1, -0x1

    .line 847
    .local v1, index:I
    iget v3, p2, Lcom/boohee/model/RecordSport;->activity_id:I

    if-nez v3, :cond_2

    .line 848
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 849
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    .line 850
    .local v2, recordSport:Lcom/boohee/model/RecordSport;
    iget-object v3, v2, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    iget-object v4, p2, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    .line 862
    .end local v1           #index:I
    .end local v2           #recordSport:Lcom/boohee/model/RecordSport;
    :cond_0
    :goto_1
    return v1

    .line 848
    .restart local v1       #index:I
    .restart local v2       #recordSport:Lcom/boohee/model/RecordSport;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    .end local v0           #i:I
    .end local v2           #recordSport:Lcom/boohee/model/RecordSport;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 856
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    .line 857
    .restart local v2       #recordSport:Lcom/boohee/model/RecordSport;
    iget v3, p2, Lcom/boohee/model/RecordSport;->activity_id:I

    iget v4, v2, Lcom/boohee/model/RecordSport;->activity_id:I

    if-ne v3, v4, :cond_3

    move v1, v0

    .line 858
    goto :goto_1

    .line 855
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getPhotoDietItemView(ILcom/boohee/model/RecordPhoto;Z)Landroid/view/View;
    .locals 8
    .parameter "index"
    .parameter "recordPhoto"
    .parameter "isLastest"

    .prologue
    const/4 v0, 0x0

    .line 617
    if-nez p2, :cond_0

    .line 642
    :goto_0
    return-object v0

    .line 618
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03014a

    invoke-virtual {v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 619
    .local v0, itemView:Landroid/view/View;
    const v5, 0x7f0e01d8

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 620
    .local v1, iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    const v5, 0x7f0e0309

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 621
    .local v3, txt_name:Landroid/widget/TextView;
    const v5, 0x7f0e030a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 622
    .local v2, txt_calory:Landroid/widget/TextView;
    const v5, 0x7f0e01a9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 625
    .local v4, view_divide:Landroid/view/View;
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v6, p2, Lcom/boohee/model/RecordPhoto;->photo_url:Ljava/lang/String;

    const v7, 0x7f020329

    invoke-static {v7}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 626
    iget-object v5, p2, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 627
    iget-object v5, p2, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :goto_1
    iget v5, p2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 632
    const-string v5, "\u6b63\u5728\u4f30\u7b97"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    :cond_1
    :goto_2
    new-instance v5, Lcom/boohee/record/DietAndSportActivity$7;

    invoke-direct {v5, p0, p2, p1}, Lcom/boohee/record/DietAndSportActivity$7;-><init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/model/RecordPhoto;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 629
    :cond_2
    const-string v5, "\u62cd\u7167\u8bb0\u5f55"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 633
    :cond_3
    iget v5, p2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    iget v5, p2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 634
    :cond_4
    iget v5, p2, Lcom/boohee/model/RecordPhoto;->calory:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/boohee/model/RecordPhoto;->calory:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5343\u5361"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string v5, ""

    goto :goto_3
.end method

.method private getSportItemView(ILcom/boohee/model/RecordSport;Z)Landroid/view/View;
    .locals 9
    .parameter "index"
    .parameter "recordSport"
    .parameter "isLastest"

    .prologue
    const/4 v0, 0x0

    .line 555
    if-nez p2, :cond_0

    .line 579
    :goto_0
    return-object v0

    .line 556
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030222

    invoke-virtual {v6, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 557
    .local v0, itemView:Landroid/view/View;
    const v6, 0x7f0e01d8

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 558
    .local v1, iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    const v6, 0x7f0e0309

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 559
    .local v4, txt_name:Landroid/widget/TextView;
    const v6, 0x7f0e06b9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 560
    .local v3, txt_count:Landroid/widget/TextView;
    const v6, 0x7f0e030a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 561
    .local v2, txt_calory:Landroid/widget/TextView;
    const v6, 0x7f0e01a9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 562
    .local v5, view_divide:Landroid/view/View;
    if-eqz p3, :cond_1

    .line 563
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 564
    :cond_1
    iget-object v6, p0, Lcom/boohee/record/DietAndSportActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v7, p2, Lcom/boohee/model/RecordSport;->thumb_img_url:Ljava/lang/String;

    const v8, 0x7f02032d

    invoke-static {v8}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v8

    invoke-virtual {v6, v7, v1, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 565
    iget-object v6, p2, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/boohee/model/RecordSport;->activity_id:I

    if-nez v6, :cond_2

    iget-object v6, p2, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    invoke-static {v6}, Lcom/boohee/utils/FoodUtils;->isKM(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p2, Lcom/boohee/model/RecordSport;->duration:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/boohee/model/RecordSport;->calory:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5343\u5361"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    new-instance v6, Lcom/boohee/record/DietAndSportActivity$5;

    invoke-direct {v6, p0, p2, p1}, Lcom/boohee/record/DietAndSportActivity$5;-><init>(Lcom/boohee/record/DietAndSportActivity;Lcom/boohee/model/RecordSport;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 566
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p2, Lcom/boohee/model/RecordSport;->duration:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->txt_date:Landroid/widget/TextView;

    const-string v1, "\u4eca\u5929"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method private initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 13
    .parameter "time_type"
    .parameter
    .parameter
    .parameter "ll_card"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 436
    .local p2, recordFoodList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p3, recordPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    const v10, 0x7f0e03d0

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 437
    .local v5, rl_meal:Landroid/widget/RelativeLayout;
    const v10, 0x7f0e00d3

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 438
    .local v8, tv_name:Landroid/widget/TextView;
    const v10, 0x7f0e00d6

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 439
    .local v7, tv_calory:Landroid/widget/TextView;
    const v10, 0x7f0e043c

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 440
    .local v2, ll_list:Landroid/widget/LinearLayout;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_9

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_9

    .line 441
    :cond_1
    const/16 v10, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    const/4 v10, 0x1

    if-ne p1, v10, :cond_4

    .line 443
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietAndSportActivity;->totalBreakfastCalory:F

    .line 500
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->refreshCalory()V

    .line 501
    iget-object v10, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v10}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 502
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v10

    new-instance v11, Lcom/boohee/one/event/CanCaloryEvent;

    invoke-direct {v11}, Lcom/boohee/one/event/CanCaloryEvent;-><init>()V

    iget v12, p0, Lcom/boohee/record/DietAndSportActivity;->canCalory:I

    invoke-virtual {v11, v12}, Lcom/boohee/one/event/CanCaloryEvent;->setCalory(I)Lcom/boohee/one/event/CanCaloryEvent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 504
    :cond_3
    new-instance v10, Lcom/boohee/record/DietAndSportActivity$3;

    move-object/from16 v0, p3

    invoke-direct {v10, p0, p1, p2, v0}, Lcom/boohee/record/DietAndSportActivity$3;-><init>(Lcom/boohee/record/DietAndSportActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    return-void

    .line 444
    :cond_4
    const/4 v10, 0x2

    if-ne p1, v10, :cond_5

    .line 445
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietAndSportActivity;->totalLunchCalory:F

    goto :goto_0

    .line 446
    :cond_5
    const/4 v10, 0x3

    if-ne p1, v10, :cond_6

    .line 447
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietAndSportActivity;->totalDinnerCalory:F

    goto :goto_0

    .line 448
    :cond_6
    const/4 v10, 0x6

    if-ne p1, v10, :cond_7

    .line 449
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksBreakfastCalory:F

    goto :goto_0

    .line 450
    :cond_7
    const/4 v10, 0x7

    if-ne p1, v10, :cond_8

    .line 451
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksLunchCalory:F

    goto :goto_0

    .line 452
    :cond_8
    const/16 v10, 0x8

    if-ne p1, v10, :cond_2

    .line 453
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksDinnerCalory:F

    goto :goto_0

    .line 456
    :cond_9
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 457
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 458
    invoke-static {p0, p1}, Lcom/boohee/utils/FoodUtils;->getDietName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    const/4 v6, 0x0

    .line 461
    .local v6, totalCalory:F
    if-nez p2, :cond_a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    .line 462
    :cond_a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_d

    .line 463
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    .line 464
    .local v3, recordFood:Lcom/boohee/model/RecordFood;
    iget v10, v3, Lcom/boohee/model/RecordFood;->calory:F

    add-float/2addr v6, v10

    .line 465
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_c

    const/4 v10, 0x1

    :goto_2
    invoke-direct {p0, v1, v3, v10}, Lcom/boohee/record/DietAndSportActivity;->getDietItemView(ILcom/boohee/model/RecordFood;Z)Landroid/view/View;

    move-result-object v9

    .line 466
    .local v9, view:Landroid/view/View;
    if-eqz v9, :cond_b

    .line 467
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 465
    .end local v9           #view:Landroid/view/View;
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 472
    .end local v1           #i:I
    .end local v3           #recordFood:Lcom/boohee/model/RecordFood;
    :cond_d
    if-nez p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_12

    .line 473
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_12

    .line 474
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/RecordPhoto;

    .line 475
    .local v4, recordPhoto:Lcom/boohee/model/RecordPhoto;
    iget v10, v4, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_f

    .line 476
    iget v10, v4, Lcom/boohee/model/RecordPhoto;->calory:F

    add-float/2addr v6, v10

    .line 478
    :cond_f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_11

    const/4 v10, 0x1

    :goto_4
    invoke-direct {p0, v1, v4, v10}, Lcom/boohee/record/DietAndSportActivity;->getPhotoDietItemView(ILcom/boohee/model/RecordPhoto;Z)Landroid/view/View;

    move-result-object v9

    .line 479
    .restart local v9       #view:Landroid/view/View;
    if-eqz v9, :cond_10

    .line 480
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 478
    .end local v9           #view:Landroid/view/View;
    :cond_11
    const/4 v10, 0x0

    goto :goto_4

    .line 485
    .end local v1           #i:I
    .end local v4           #recordPhoto:Lcom/boohee/model/RecordPhoto;
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u5343\u5361"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const/4 v10, 0x1

    if-ne p1, v10, :cond_13

    .line 487
    iput v6, p0, Lcom/boohee/record/DietAndSportActivity;->totalBreakfastCalory:F

    goto/16 :goto_0

    .line 488
    :cond_13
    const/4 v10, 0x2

    if-ne p1, v10, :cond_14

    .line 489
    iput v6, p0, Lcom/boohee/record/DietAndSportActivity;->totalLunchCalory:F

    goto/16 :goto_0

    .line 490
    :cond_14
    const/4 v10, 0x3

    if-ne p1, v10, :cond_15

    .line 491
    iput v6, p0, Lcom/boohee/record/DietAndSportActivity;->totalDinnerCalory:F

    goto/16 :goto_0

    .line 492
    :cond_15
    const/4 v10, 0x6

    if-ne p1, v10, :cond_16

    .line 493
    iput v6, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksBreakfastCalory:F

    goto/16 :goto_0

    .line 494
    :cond_16
    const/4 v10, 0x7

    if-ne p1, v10, :cond_17

    .line 495
    iput v6, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksLunchCalory:F

    goto/16 :goto_0

    .line 496
    :cond_17
    const/16 v10, 0x8

    if-ne p1, v10, :cond_2

    .line 497
    iput v6, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksDinnerCalory:F

    goto/16 :goto_0
.end method

.method private initDietData(Lorg/json/JSONObject;)V
    .locals 12
    .parameter "object"

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 370
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/boohee/model/RecordFood;

    invoke-static {v5, v6}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 372
    .local v2, recordFoods:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    const-string v5, "diet_photos"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/boohee/model/RecordPhoto;

    invoke-static {v5, v6}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 374
    .local v4, recordPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordPhoto;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 375
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 376
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/RecordFood;

    .line 377
    .local v1, recordFood:Lcom/boohee/model/RecordFood;
    iget v5, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v5, v7, :cond_1

    .line 378
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    iget v5, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v5, v8, :cond_2

    .line 380
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :cond_2
    iget v5, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v5, v9, :cond_3

    .line 382
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    :cond_3
    iget v5, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v5, v10, :cond_4

    .line 384
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    :cond_4
    iget v5, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v5, v11, :cond_5

    .line 386
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    :cond_5
    iget v5, v1, Lcom/boohee/model/RecordFood;->time_type:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 388
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    .end local v0           #i:I
    .end local v1           #recordFood:Lcom/boohee/model/RecordFood;
    :cond_6
    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 394
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 395
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordPhoto;

    .line 396
    .local v3, recordPhoto:Lcom/boohee/model/RecordPhoto;
    iget v5, v3, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v5, v7, :cond_8

    .line 397
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 398
    :cond_8
    iget v5, v3, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v5, v8, :cond_9

    .line 399
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 400
    :cond_9
    iget v5, v3, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v5, v9, :cond_a

    .line 401
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 402
    :cond_a
    iget v5, v3, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v5, v10, :cond_b

    .line 403
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 404
    :cond_b
    iget v5, v3, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v5, v11, :cond_c

    .line 405
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 406
    :cond_c
    iget v5, v3, Lcom/boohee/model/RecordPhoto;->time_type:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    .line 407
    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 411
    .end local v0           #i:I
    .end local v3           #recordPhoto:Lcom/boohee/model/RecordPhoto;
    :cond_d
    return-void
.end method

.method private initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V
    .locals 4
    .parameter
    .parameter "dietEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Lcom/boohee/one/event/DietEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, recordFoods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getEditType()I

    move-result v0

    .line 748
    .local v0, editType:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 749
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 750
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/boohee/record/DietAndSportActivity;->getIndexFromList(Ljava/util/ArrayList;Lcom/boohee/model/RecordFood;)I

    move-result v1

    .line 751
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 752
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 754
    .restart local v1       #index:I
    :cond_1
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 757
    .end local v1           #index:I
    :cond_2
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 759
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 760
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 761
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getIndex()I

    move-result v2

    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 762
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 763
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V
    .locals 3
    .parameter
    .parameter "photoDietEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;",
            "Lcom/boohee/one/event/PhotoDietEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 774
    .local p1, recordPhotos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getEditType()I

    move-result v0

    .line 775
    .local v0, editType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getRecordPhoto()Lcom/boohee/model/RecordPhoto;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 776
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getRecordPhoto()Lcom/boohee/model/RecordPhoto;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getRecordPhoto()Lcom/boohee/model/RecordPhoto;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 778
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 779
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getIndex()I

    move-result v1

    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getRecordPhoto()Lcom/boohee/model/RecordPhoto;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 780
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 781
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 11
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
    const/4 v9, 0x0

    .line 516
    const v8, 0x7f0e03d0

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 517
    .local v3, rl_meal:Landroid/widget/RelativeLayout;
    const v8, 0x7f0e00d3

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 518
    .local v6, tv_name:Landroid/widget/TextView;
    const v8, 0x7f0e00d6

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 519
    .local v5, tv_calory:Landroid/widget/TextView;
    const v8, 0x7f0e043c

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 520
    .local v1, ll_list:Landroid/widget/LinearLayout;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/boohee/record/DietAndSportActivity;->videoSportRecords:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 521
    const/16 v8, 0x8

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    const/4 v8, 0x0

    iput v8, p0, Lcom/boohee/record/DietAndSportActivity;->totalSportCalory:F

    .line 539
    :goto_0
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->refreshCalory()V

    .line 540
    iget-object v8, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v8}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 541
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v8

    new-instance v9, Lcom/boohee/one/event/CanCaloryEvent;

    invoke-direct {v9}, Lcom/boohee/one/event/CanCaloryEvent;-><init>()V

    iget v10, p0, Lcom/boohee/record/DietAndSportActivity;->canCalory:I

    invoke-virtual {v9, v10}, Lcom/boohee/one/event/CanCaloryEvent;->setCalory(I)Lcom/boohee/one/event/CanCaloryEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 543
    :cond_1
    new-instance v8, Lcom/boohee/record/DietAndSportActivity$4;

    invoke-direct {v8, p0, p1}, Lcom/boohee/record/DietAndSportActivity$4;-><init>(Lcom/boohee/record/DietAndSportActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    return-void

    .line 524
    :cond_2
    invoke-virtual {p2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 526
    const-string v8, "\u8fd0\u52a8"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    const/4 v4, 0x0

    .line 528
    .local v4, totalCalory:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 529
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    .line 530
    .local v2, recordSport:Lcom/boohee/model/RecordSport;
    iget v8, v2, Lcom/boohee/model/RecordSport;->calory:F

    add-float/2addr v4, v8

    .line 531
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    invoke-direct {p0, v0, v2, v8}, Lcom/boohee/record/DietAndSportActivity;->getSportItemView(ILcom/boohee/model/RecordSport;Z)Landroid/view/View;

    move-result-object v7

    .line 532
    .local v7, view:Landroid/view/View;
    if-eqz v7, :cond_3

    .line 533
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v7           #view:Landroid/view/View;
    :cond_4
    move v8, v9

    .line 531
    goto :goto_2

    .line 536
    .end local v2           #recordSport:Lcom/boohee/model/RecordSport;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5343\u5361"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iput v4, p0, Lcom/boohee/record/DietAndSportActivity;->totalSportCalory:F

    goto :goto_0
.end method

.method private initSportData(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 419
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 420
    const/4 v3, 0x0

    iput v3, p0, Lcom/boohee/record/DietAndSportActivity;->totalSportCalory:F

    .line 421
    const-string v3, "data"

    invoke-static {p1, v3}, Lcom/boohee/model/RecordSport;->parseList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 422
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordSport;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 423
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_record:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_record_null:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 426
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    .line 427
    .local v2, sportFood:Lcom/boohee/model/RecordSport;
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v0           #i:I
    .end local v2           #sportFood:Lcom/boohee/model/RecordSport;
    :cond_0
    return-void
.end method

.method private initToolsBar()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 179
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03022e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, toolbar_diet_sport:Landroid/view/View;
    const v2, 0x7f0e031c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->txt_date:Landroid/widget/TextView;

    .line 181
    const v2, 0x7f0e06b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v2, 0x7f0e06b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/boohee/record/DietAndSportActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 184
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 185
    .local v0, layoutParams:Landroid/support/v7/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/boohee/record/DietAndSportActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 186
    return-void
.end method

.method private intBudgetCalory()V
    .locals 3

    .prologue
    .line 198
    new-instance v1, Lcom/boohee/myview/MineHeadViewFactory;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, v2}, Lcom/boohee/myview/MineHeadViewFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->factory:Lcom/boohee/myview/MineHeadViewFactory;

    .line 199
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v0

    .line 200
    .local v0, user:Lcom/boohee/model/User;
    iget v1, v0, Lcom/boohee/model/User;->target_calory:I

    int-to-float v1, v1

    iput v1, p0, Lcom/boohee/record/DietAndSportActivity;->budgetCalory:F

    .line 201
    iget v1, v0, Lcom/boohee/model/User;->target_weight:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/boohee/record/DietAndSportActivity;->isLoseWeight:Z

    .line 202
    return-void

    .line 201
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshCalory()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 649
    iget v3, p0, Lcom/boohee/record/DietAndSportActivity;->totalBreakfastCalory:F

    iget v4, p0, Lcom/boohee/record/DietAndSportActivity;->totalLunchCalory:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/boohee/record/DietAndSportActivity;->totalDinnerCalory:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksBreakfastCalory:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksLunchCalory:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksDinnerCalory:F

    add-float v1, v3, v4

    .line 650
    .local v1, totalDietCalory:F
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v2, v3, v4

    .line 652
    .local v2, totalRecordSize:I
    if-lez v2, :cond_0

    .line 653
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_record:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 654
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_record_null:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 659
    :goto_0
    iget-boolean v3, p0, Lcom/boohee/record/DietAndSportActivity;->isLoseWeight:Z

    if-eqz v3, :cond_1

    .line 660
    iget v3, p0, Lcom/boohee/record/DietAndSportActivity;->budgetCalory:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/boohee/record/DietAndSportActivity;->canCalory:I

    .line 664
    :goto_1
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 665
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_today_analysis:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    :goto_2
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_calory_distribute:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 670
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->factory:Lcom/boohee/myview/MineHeadViewFactory;

    const/4 v4, 0x2

    iget v5, p0, Lcom/boohee/record/DietAndSportActivity;->totalSportCalory:F

    invoke-virtual {v3, v4, v1, v5}, Lcom/boohee/myview/MineHeadViewFactory;->createHeadView(IFF)Landroid/view/View;

    move-result-object v0

    .line 671
    .local v0, header_calory:Landroid/view/View;
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_calory_distribute:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 672
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->factory:Lcom/boohee/myview/MineHeadViewFactory;

    invoke-virtual {v3, v0}, Lcom/boohee/myview/MineHeadViewFactory;->runAnimation(Landroid/view/View;)V

    .line 673
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    const-string v4, "%.0f"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%.0f"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/boohee/record/DietAndSportActivity;->totalSportCalory:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/boohee/record/DietAndSportActivity;->saveCaloryRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void

    .line 656
    .end local v0           #header_calory:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_record_null:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 657
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_record:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 662
    :cond_1
    iget v3, p0, Lcom/boohee/record/DietAndSportActivity;->budgetCalory:F

    iget v4, p0, Lcom/boohee/record/DietAndSportActivity;->totalSportCalory:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/boohee/record/DietAndSportActivity;->canCalory:I

    goto :goto_1

    .line 667
    :cond_2
    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_today_analysis:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private saveCaloryRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "record_on"
    .parameter "totalDietCalory"
    .parameter "totalSportCalory"

    .prologue
    .line 895
    invoke-static {p1}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    new-instance v0, Lcom/boohee/model/LocalCaloryRecord;

    invoke-direct {v0, p1, p2, p3}, Lcom/boohee/model/LocalCaloryRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    .local v0, caloryRecord:Lcom/boohee/model/LocalCaloryRecord;
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v2, "today_calory"

    invoke-static {v0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->getCacheTime()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 899
    .end local v0           #caloryRecord:Lcom/boohee/model/LocalCaloryRecord;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 216
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 219
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    iput v1, p0, Lcom/boohee/record/DietAndSportActivity;->totalBreakfastCalory:F

    .line 221
    iput v1, p0, Lcom/boohee/record/DietAndSportActivity;->totalLunchCalory:F

    .line 222
    iput v1, p0, Lcom/boohee/record/DietAndSportActivity;->totalDinnerCalory:F

    .line 223
    iput v1, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksBreakfastCalory:F

    .line 224
    iput v1, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksLunchCalory:F

    .line 225
    iput v1, p0, Lcom/boohee/record/DietAndSportActivity;->totalSnacksDinnerCalory:F

    .line 226
    iput v1, p0, Lcom/boohee/record/DietAndSportActivity;->totalSportCalory:F

    .line 227
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0501,
            0x7f0e0502,
            0x7f0e0503,
            0x7f0e0504,
            0x7f0e0505,
            0x7f0e011d
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 233
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->txt_date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4eca\u5929"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p0}, Lcom/boohee/record/DietAndSportActivity;->clearList()V

    .line 236
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->refreshCalory()V

    .line 237
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->getEatings()V

    .line 238
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->getActivities()V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    goto :goto_1

    .line 241
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->txt_date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4eca\u5929"

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Lcom/boohee/record/DietAndSportActivity;->clearList()V

    .line 244
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->refreshCalory()V

    .line 245
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->getEatings()V

    .line 246
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->getActivities()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    goto :goto_2

    .line 249
    :sswitch_2
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 252
    :sswitch_3
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 255
    :sswitch_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 258
    :sswitch_5
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->ll_nav_snacks:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/boohee/record/DietAndSportActivity;->createPopwindow(Landroid/view/View;)V

    goto :goto_0

    .line 261
    :sswitch_6
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/food/AddSportListActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :sswitch_7
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "tool_dailyanalyze"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e011d -> :sswitch_7
        0x7f0e0501 -> :sswitch_2
        0x7f0e0502 -> :sswitch_3
        0x7f0e0503 -> :sswitch_4
        0x7f0e0504 -> :sswitch_5
        0x7f0e0505 -> :sswitch_6
        0x7f0e06b3 -> :sswitch_0
        0x7f0e06b4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/boohee/record/DietAndSportActivity;->setContentView(I)V

    .line 139
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 140
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->mCache:Lcom/boohee/one/cache/FileCache;

    .line 141
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->initToolsBar()V

    .line 142
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 143
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->initDate()V

    .line 144
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->intBudgetCalory()V

    .line 145
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->refreshCalory()V

    .line 146
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->getEatings()V

    .line 147
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->getActivities()V

    .line 148
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 153
    invoke-virtual {p0}, Lcom/boohee/record/DietAndSportActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 678
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 679
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 680
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 681
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/ConstEvent;)V
    .locals 2
    .parameter "constEvent"

    .prologue
    .line 830
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/boohee/one/event/ConstEvent;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/boohee/record/DietAndSportActivity;->clearList()V

    .line 832
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->refreshCalory()V

    .line 833
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->getEatings()V

    .line 834
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->getActivities()V

    .line 836
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/DietEvent;)V
    .locals 4
    .parameter "eventEditDiet"

    .prologue
    .line 689
    invoke-virtual {p1}, Lcom/boohee/one/event/DietEvent;->getTimeType()I

    move-result v0

    .line 690
    .local v0, timeType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 692
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 694
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 695
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 696
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 697
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 698
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 699
    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 700
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 701
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_snacks_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 702
    :cond_4
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 703
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 704
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_snacks_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 705
    :cond_5
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 707
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_snacks_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/boohee/one/event/PhotoDietEvent;)V
    .locals 4
    .parameter "eventPhotoEditDiet"

    .prologue
    .line 717
    invoke-virtual {p1}, Lcom/boohee/one/event/PhotoDietEvent;->getTimeType()I

    move-result v0

    .line 718
    .local v0, timeType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 720
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 723
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 724
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 725
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 726
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 727
    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 728
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 729
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_snacks_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 730
    :cond_4
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 731
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 732
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_snacks_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 733
    :cond_5
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietAndSportActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 735
    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_snacks_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/boohee/one/event/SportEvent;)V
    .locals 5
    .parameter "sportEvent"

    .prologue
    .line 808
    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getEditType()I

    move-result v0

    .line 809
    .local v0, editType:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 810
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 811
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->getIndexFromList(Ljava/util/ArrayList;Lcom/boohee/model/RecordSport;)I

    move-result v1

    .line 812
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    .end local v1           #index:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->ll_card_sport:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v3}, Lcom/boohee/record/DietAndSportActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 827
    return-void

    .line 815
    .restart local v1       #index:I
    :cond_1
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 818
    .end local v1           #index:I
    :cond_2
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 820
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 821
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 822
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 823
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 824
    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 15
    .parameter "item"

    .prologue
    .line 159
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    invoke-super/range {p0 .. p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "tool_foodandsport_copy"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/record/HistoryRecordActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "tool_foodandsport_abstract"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/record/DietAndSportActivity;->record_on:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietAndSportActivity;->lunchList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/boohee/record/DietAndSportActivity;->sportList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/boohee/record/DietAndSportActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/boohee/record/DietAndSportActivity;->lunchPhotoList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/boohee/record/DietAndSportActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/boohee/record/DietAndSportActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/boohee/record/DietAndSportActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    iget-object v14, p0, Lcom/boohee/record/DietAndSportActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v14}, Lcom/boohee/food/SummaryActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 169
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/record/DietAndSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/record/DietChartActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07cf
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 872
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onWindowFocusChanged(Z)V

    .line 873
    if-eqz p1, :cond_0

    .line 874
    invoke-direct {p0}, Lcom/boohee/record/DietAndSportActivity;->createGuidePopWindow()V

    .line 876
    :cond_0
    return-void
.end method
