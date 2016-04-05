.class public Lcom/boohee/record/DietSportCalendarActivity;
.super Lcom/boohee/main/GestureActivity;
.source "DietSportCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;
    }
.end annotation


# static fields
.field public static final ANIM_DURATION:I = 0x1f4

.field public static final TIME_TYPE_BREAKFAST:I = 0x1

.field public static final TIME_TYPE_DINNER:I = 0x3

.field public static final TIME_TYPE_LUNCH:I = 0x2

.field public static final TIME_TYPE_SNACKS_BREAKFAST:I = 0x6

.field public static final TIME_TYPE_SNACKS_DINNER:I = 0x8

.field public static final TIME_TYPE_SNACKS_LUNCH:I = 0x7


# instance fields
.field backToday:Landroid/widget/TextView;

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

.field dietPopView:Lcom/boohee/myview/DietPopView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e011f
    .end annotation
.end field

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

.field indicator:Landroid/view/View;

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

.field ll_date_select:Landroid/widget/LinearLayout;

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

.field ll_top_layout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0119
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

    .line 88
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 132
    iput v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->budgetCalory:F

    .line 133
    iput v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalBreakfastCalory:F

    .line 134
    iput v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalLunchCalory:F

    .line 135
    iput v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalDinnerCalory:F

    .line 136
    iput v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksBreakfastCalory:F

    .line 137
    iput v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksLunchCalory:F

    .line 138
    iput v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksDinnerCalory:F

    .line 139
    iput v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSportCalory:F

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->isLoseWeight:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    .line 412
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/DietSportCalendarActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->showHighLight()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/boohee/record/DietSportCalendarActivity;->initDietUI(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/boohee/record/DietSportCalendarActivity;->initSportData(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/boohee/record/DietSportCalendarActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/boohee/record/DietSportCalendarActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/boohee/record/DietSportCalendarActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getActivities()V

    return-void
.end method

.method static synthetic access$2200(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/Date;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/boohee/record/DietSportCalendarActivity;->refreshDietAndSport(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/record/DietSportCalendarActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/record/DietSportCalendarActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/record/DietSportCalendarActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method private checkGuide()V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Lcom/boohee/database/OnePreference;->isDietFoodGuide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/record/DietSportCalendarActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/record/DietSportCalendarActivity$1;-><init>(Lcom/boohee/record/DietSportCalendarActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
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

    .line 397
    invoke-virtual {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301ac

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 398
    .local v0, layout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 399
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 400
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 401
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 403
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 404
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 405
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    aget v3, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aget v4, v1, v6

    add-int/lit16 v4, v4, -0x15e

    invoke-virtual {v2, p1, v7, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 406
    const v2, 0x7f0e052d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;

    invoke-direct {v3, p0, v5}, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/record/DietSportCalendarActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    const v2, 0x7f0e052e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;

    invoke-direct {v3, p0, v5}, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/record/DietSportCalendarActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const v2, 0x7f0e052f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;

    invoke-direct {v3, p0, v5}, Lcom/boohee/record/DietSportCalendarActivity$OnSnacksClickListener;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/record/DietSportCalendarActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    return-void
.end method

.method private getActivities()V
    .locals 3

    .prologue
    .line 476
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-static {p0}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/boohee/record/DietSportCalendarActivity;->showLoading()V

    .line 480
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    new-instance v2, Lcom/boohee/record/DietSportCalendarActivity$9;

    invoke-direct {v2, p0, p0}, Lcom/boohee/record/DietSportCalendarActivity$9;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Landroid/content/Context;)V

    invoke-static {v1, p0, v2}, Lcom/boohee/api/RecordApi;->getActivities(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0

    .line 498
    :cond_1
    new-instance v1, Lcom/boohee/modeldao/SportRecordDao;

    invoke-direct {v1, p0}, Lcom/boohee/modeldao/SportRecordDao;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/SportRecordDao;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 499
    .local v0, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordSport;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/boohee/record/DietSportCalendarActivity;->initSportData(Ljava/util/List;Ljava/util/List;)V

    .line 500
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_sport:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v2}, Lcom/boohee/record/DietSportCalendarActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method private getCacheTime()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1087
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1088
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v2, 0xb

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1089
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 1090
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 1091
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 1092
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

    .line 779
    if-nez p2, :cond_0

    .line 808
    :goto_0
    return-object v0

    .line 780
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030222

    invoke-virtual {v6, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 781
    .local v0, itemView:Landroid/view/View;
    const v6, 0x7f0e01d8

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 782
    .local v1, iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    const v6, 0x7f0e0309

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 783
    .local v4, txt_name:Landroid/widget/TextView;
    const v6, 0x7f0e06b9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 784
    .local v3, txt_count:Landroid/widget/TextView;
    const v6, 0x7f0e030a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 785
    .local v2, txt_calory:Landroid/widget/TextView;
    const v6, 0x7f0e01a9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 788
    .local v5, view_divide:Landroid/view/View;
    iget-object v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v7, p2, Lcom/boohee/model/RecordFood;->thumb_img_url:Ljava/lang/String;

    const v8, 0x7f020329

    invoke-static {v8}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v8

    invoke-virtual {v6, v7, v1, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 789
    iget-object v6, p2, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
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

    .line 791
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/boohee/model/RecordFood;->calory:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5927\u5361"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    new-instance v6, Lcom/boohee/record/DietSportCalendarActivity$14;

    invoke-direct {v6, p0, p2, p1}, Lcom/boohee/record/DietSportCalendarActivity$14;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/model/RecordFood;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private getEatings()V
    .locals 3

    .prologue
    .line 439
    invoke-static {p0}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/boohee/record/DietSportCalendarActivity;->showLoading()V

    .line 441
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    new-instance v2, Lcom/boohee/record/DietSportCalendarActivity$8;

    invoke-direct {v2, p0, p0}, Lcom/boohee/record/DietSportCalendarActivity$8;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Landroid/content/Context;)V

    invoke-static {v1, p0, v2}, Lcom/boohee/api/RecordApi;->getEatings(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    new-instance v1, Lcom/boohee/modeldao/FoodRecordDao;

    invoke-direct {v1, p0}, Lcom/boohee/modeldao/FoodRecordDao;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/FoodRecordDao;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 458
    .local v0, recordFoods:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/boohee/record/DietSportCalendarActivity;->initDietUI(Ljava/util/List;Ljava/util/List;)V

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
    .line 991
    .local p1, recordFoods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    const/4 v1, -0x1

    .line 992
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 993
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

    .line 997
    .end local v0           #i:I
    :goto_1
    return v0

    .line 992
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 997
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
    .line 1044
    .local p1, recordSports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    const/4 v1, -0x1

    .line 1045
    .local v1, index:I
    iget v3, p2, Lcom/boohee/model/RecordSport;->activity_id:I

    if-nez v3, :cond_2

    .line 1046
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1047
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    .line 1048
    .local v2, recordSport:Lcom/boohee/model/RecordSport;
    iget-object v3, v2, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    iget-object v4, p2, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    .line 1060
    .end local v1           #index:I
    .end local v2           #recordSport:Lcom/boohee/model/RecordSport;
    :cond_0
    :goto_1
    return v1

    .line 1046
    .restart local v1       #index:I
    .restart local v2       #recordSport:Lcom/boohee/model/RecordSport;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    .end local v0           #i:I
    .end local v2           #recordSport:Lcom/boohee/model/RecordSport;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1054
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    .line 1055
    .restart local v2       #recordSport:Lcom/boohee/model/RecordSport;
    iget v3, p2, Lcom/boohee/model/RecordSport;->activity_id:I

    iget v4, v2, Lcom/boohee/model/RecordSport;->activity_id:I

    if-ne v3, v4, :cond_3

    move v1, v0

    .line 1056
    goto :goto_1

    .line 1053
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

    .line 815
    if-nez p2, :cond_0

    .line 840
    :goto_0
    return-object v0

    .line 816
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03014a

    invoke-virtual {v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 817
    .local v0, itemView:Landroid/view/View;
    const v5, 0x7f0e01d8

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 818
    .local v1, iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    const v5, 0x7f0e0309

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 819
    .local v3, txt_name:Landroid/widget/TextView;
    const v5, 0x7f0e030a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 820
    .local v2, txt_calory:Landroid/widget/TextView;
    const v5, 0x7f0e01a9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 823
    .local v4, view_divide:Landroid/view/View;
    iget-object v5, p0, Lcom/boohee/record/DietSportCalendarActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v6, p2, Lcom/boohee/model/RecordPhoto;->photo_url:Ljava/lang/String;

    const v7, 0x7f020329

    invoke-static {v7}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 824
    iget-object v5, p2, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 825
    iget-object v5, p2, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    :goto_1
    iget v5, p2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 830
    const-string v5, "\u6b63\u5728\u4f30\u7b97"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    :cond_1
    :goto_2
    new-instance v5, Lcom/boohee/record/DietSportCalendarActivity$15;

    invoke-direct {v5, p0, p2, p1}, Lcom/boohee/record/DietSportCalendarActivity$15;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/model/RecordPhoto;I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 827
    :cond_2
    const-string v5, "\u62cd\u7167\u8bb0\u5f55"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 831
    :cond_3
    iget v5, p2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    iget v5, p2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 832
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

    const-string v6, "\u5927\u5361"

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

    .line 702
    if-nez p2, :cond_0

    .line 726
    :goto_0
    return-object v0

    .line 703
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030222

    invoke-virtual {v6, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 704
    .local v0, itemView:Landroid/view/View;
    const v6, 0x7f0e01d8

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 705
    .local v1, iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    const v6, 0x7f0e0309

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 706
    .local v4, txt_name:Landroid/widget/TextView;
    const v6, 0x7f0e06b9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 707
    .local v3, txt_count:Landroid/widget/TextView;
    const v6, 0x7f0e030a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 708
    .local v2, txt_calory:Landroid/widget/TextView;
    const v6, 0x7f0e01a9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 709
    .local v5, view_divide:Landroid/view/View;
    if-eqz p3, :cond_2

    iget-object v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 710
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 711
    :cond_2
    iget-object v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v7, p2, Lcom/boohee/model/RecordSport;->thumb_img_url:Ljava/lang/String;

    const v8, 0x7f02032d

    invoke-static {v8}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v8

    invoke-virtual {v6, v7, v1, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 712
    iget-object v6, p2, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/boohee/model/RecordSport;->activity_id:I

    if-nez v6, :cond_3

    iget-object v6, p2, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    invoke-static {v6}, Lcom/boohee/utils/FoodUtils;->isKM(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

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

    .line 714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/boohee/model/RecordSport;->calory:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5927\u5361"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    new-instance v6, Lcom/boohee/record/DietSportCalendarActivity$12;

    invoke-direct {v6, p0, p2, p1}, Lcom/boohee/record/DietSportCalendarActivity$12;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/model/RecordSport;I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 713
    :cond_3
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

.method private getVideoSportItemView(ILcom/boohee/model/VideoSportRecord;Z)Landroid/view/View;
    .locals 9
    .parameter "index"
    .parameter "recordSport"
    .parameter "isLastest"

    .prologue
    const/4 v0, 0x0

    .line 733
    if-nez p2, :cond_0

    .line 772
    :goto_0
    return-object v0

    .line 734
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030222

    invoke-virtual {v6, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 735
    .local v0, itemView:Landroid/view/View;
    const v6, 0x7f0e01d8

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 736
    .local v1, iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;
    const v6, 0x7f0e0309

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 737
    .local v4, txt_name:Landroid/widget/TextView;
    const v6, 0x7f0e06b9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 738
    .local v3, txt_count:Landroid/widget/TextView;
    const v6, 0x7f0e030a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 739
    .local v2, txt_calory:Landroid/widget/TextView;
    const v6, 0x7f0e01a9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 740
    .local v5, view_divide:Landroid/view/View;
    if-eqz p3, :cond_1

    .line 741
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 742
    :cond_1
    iget-object v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v7, p2, Lcom/boohee/model/VideoSportRecord;->img_url:Ljava/lang/String;

    const v8, 0x7f02032d

    invoke-static {v8}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v8

    invoke-virtual {v6, v7, v1, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 743
    iget-object v6, p2, Lcom/boohee/model/VideoSportRecord;->activity_name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    const v6, 0x7f070269

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/boohee/model/VideoSportRecord;->calory:I

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5927\u5361"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    new-instance v6, Lcom/boohee/record/DietSportCalendarActivity$13;

    invoke-direct {v6, p0, p2}, Lcom/boohee/record/DietSportCalendarActivity$13;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Lcom/boohee/model/VideoSportRecord;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initDate()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->txt_date:Landroid/widget/TextView;

    const-string v1, "\u4eca\u5929"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
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
    .line 575
    .local p2, recordFoodList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p3, recordPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    const v10, 0x7f0e03d0

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 576
    .local v5, rl_meal:Landroid/widget/RelativeLayout;
    const v10, 0x7f0e00d3

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 577
    .local v8, tv_name:Landroid/widget/TextView;
    const v10, 0x7f0e00d6

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 578
    .local v7, tv_calory:Landroid/widget/TextView;
    const v10, 0x7f0e043c

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 579
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

    .line 580
    :cond_1
    const/16 v10, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    const/4 v10, 0x1

    if-ne p1, v10, :cond_4

    .line 582
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalBreakfastCalory:F

    .line 639
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->refreshCalory()V

    .line 640
    iget-object v10, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {v10}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 641
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v10

    new-instance v11, Lcom/boohee/one/event/CanCaloryEvent;

    invoke-direct {v11}, Lcom/boohee/one/event/CanCaloryEvent;-><init>()V

    iget v12, p0, Lcom/boohee/record/DietSportCalendarActivity;->canCalory:I

    invoke-virtual {v11, v12}, Lcom/boohee/one/event/CanCaloryEvent;->setCalory(I)Lcom/boohee/one/event/CanCaloryEvent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 643
    :cond_3
    new-instance v10, Lcom/boohee/record/DietSportCalendarActivity$10;

    move-object/from16 v0, p3

    invoke-direct {v10, p0, p1, p2, v0}, Lcom/boohee/record/DietSportCalendarActivity$10;-><init>(Lcom/boohee/record/DietSportCalendarActivity;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    return-void

    .line 583
    :cond_4
    const/4 v10, 0x2

    if-ne p1, v10, :cond_5

    .line 584
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalLunchCalory:F

    goto :goto_0

    .line 585
    :cond_5
    const/4 v10, 0x3

    if-ne p1, v10, :cond_6

    .line 586
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalDinnerCalory:F

    goto :goto_0

    .line 587
    :cond_6
    const/4 v10, 0x6

    if-ne p1, v10, :cond_7

    .line 588
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksBreakfastCalory:F

    goto :goto_0

    .line 589
    :cond_7
    const/4 v10, 0x7

    if-ne p1, v10, :cond_8

    .line 590
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksLunchCalory:F

    goto :goto_0

    .line 591
    :cond_8
    const/16 v10, 0x8

    if-ne p1, v10, :cond_2

    .line 592
    const/4 v10, 0x0

    iput v10, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksDinnerCalory:F

    goto :goto_0

    .line 595
    :cond_9
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 597
    invoke-static {p0, p1}, Lcom/boohee/utils/FoodUtils;->getDietName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    const/4 v6, 0x0

    .line 600
    .local v6, totalCalory:F
    if-nez p2, :cond_a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    .line 601
    :cond_a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_d

    .line 602
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    .line 603
    .local v3, recordFood:Lcom/boohee/model/RecordFood;
    iget v10, v3, Lcom/boohee/model/RecordFood;->calory:F

    add-float/2addr v6, v10

    .line 604
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_c

    const/4 v10, 0x1

    :goto_2
    invoke-direct {p0, v1, v3, v10}, Lcom/boohee/record/DietSportCalendarActivity;->getDietItemView(ILcom/boohee/model/RecordFood;Z)Landroid/view/View;

    move-result-object v9

    .line 605
    .local v9, view:Landroid/view/View;
    if-eqz v9, :cond_b

    .line 606
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    .end local v9           #view:Landroid/view/View;
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 611
    .end local v1           #i:I
    .end local v3           #recordFood:Lcom/boohee/model/RecordFood;
    :cond_d
    if-nez p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_12

    .line 612
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_12

    .line 613
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/RecordPhoto;

    .line 614
    .local v4, recordPhoto:Lcom/boohee/model/RecordPhoto;
    iget v10, v4, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_f

    .line 615
    iget v10, v4, Lcom/boohee/model/RecordPhoto;->calory:F

    add-float/2addr v6, v10

    .line 617
    :cond_f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_11

    const/4 v10, 0x1

    :goto_4
    invoke-direct {p0, v1, v4, v10}, Lcom/boohee/record/DietSportCalendarActivity;->getPhotoDietItemView(ILcom/boohee/model/RecordPhoto;Z)Landroid/view/View;

    move-result-object v9

    .line 618
    .restart local v9       #view:Landroid/view/View;
    if-eqz v9, :cond_10

    .line 619
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 612
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 617
    .end local v9           #view:Landroid/view/View;
    :cond_11
    const/4 v10, 0x0

    goto :goto_4

    .line 624
    .end local v1           #i:I
    .end local v4           #recordPhoto:Lcom/boohee/model/RecordPhoto;
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u5927\u5361"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    const/4 v10, 0x1

    if-ne p1, v10, :cond_13

    .line 626
    iput v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalBreakfastCalory:F

    goto/16 :goto_0

    .line 627
    :cond_13
    const/4 v10, 0x2

    if-ne p1, v10, :cond_14

    .line 628
    iput v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalLunchCalory:F

    goto/16 :goto_0

    .line 629
    :cond_14
    const/4 v10, 0x3

    if-ne p1, v10, :cond_15

    .line 630
    iput v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalDinnerCalory:F

    goto/16 :goto_0

    .line 631
    :cond_15
    const/4 v10, 0x6

    if-ne p1, v10, :cond_16

    .line 632
    iput v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksBreakfastCalory:F

    goto/16 :goto_0

    .line 633
    :cond_16
    const/4 v10, 0x7

    if-ne p1, v10, :cond_17

    .line 634
    iput v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksLunchCalory:F

    goto/16 :goto_0

    .line 635
    :cond_17
    const/16 v10, 0x8

    if-ne p1, v10, :cond_2

    .line 636
    iput v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksDinnerCalory:F

    goto/16 :goto_0
.end method

.method private initDietData(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, recordFoods:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    .local p2, recordPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordPhoto;>;"
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 508
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 509
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 510
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/RecordFood;

    .line 511
    .local v1, recordFood:Lcom/boohee/model/RecordFood;
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v3, v5, :cond_1

    .line 512
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v3, v6, :cond_2

    .line 514
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 515
    :cond_2
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v3, v7, :cond_3

    .line 516
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    :cond_3
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v3, v8, :cond_4

    .line 518
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    :cond_4
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    if-ne v3, v9, :cond_5

    .line 520
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 521
    :cond_5
    iget v3, v1, Lcom/boohee/model/RecordFood;->time_type:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 522
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    .end local v0           #i:I
    .end local v1           #recordFood:Lcom/boohee/model/RecordFood;
    :cond_6
    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 528
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 529
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordPhoto;

    .line 530
    .local v2, recordPhoto:Lcom/boohee/model/RecordPhoto;
    iget v3, v2, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v3, v5, :cond_8

    .line 531
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 532
    :cond_8
    iget v3, v2, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v3, v6, :cond_9

    .line 533
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 534
    :cond_9
    iget v3, v2, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v3, v7, :cond_a

    .line 535
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 536
    :cond_a
    iget v3, v2, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v3, v8, :cond_b

    .line 537
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 538
    :cond_b
    iget v3, v2, Lcom/boohee/model/RecordPhoto;->time_type:I

    if-ne v3, v9, :cond_c

    .line 539
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 540
    :cond_c
    iget v3, v2, Lcom/boohee/model/RecordPhoto;->time_type:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 541
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 545
    .end local v0           #i:I
    .end local v2           #recordPhoto:Lcom/boohee/model/RecordPhoto;
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
    .line 945
    .local p1, recordFoods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getEditType()I

    move-result v0

    .line 946
    .local v0, editType:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 947
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 948
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/boohee/record/DietSportCalendarActivity;->getIndexFromList(Ljava/util/ArrayList;Lcom/boohee/model/RecordFood;)I

    move-result v1

    .line 949
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 950
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 952
    .restart local v1       #index:I
    :cond_1
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 955
    .end local v1           #index:I
    :cond_2
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 957
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 958
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 959
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getIndex()I

    move-result v2

    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getRecordFood()Lcom/boohee/model/RecordFood;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 960
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 961
    invoke-virtual {p2}, Lcom/boohee/one/event/DietEvent;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initDietUI(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, recordFoods:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    .local p2, recordPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordPhoto;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/record/DietSportCalendarActivity;->initDietData(Ljava/util/List;Ljava/util/List;)V

    .line 464
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 465
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 466
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 467
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_snacks_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 468
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_snacks_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 469
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_snacks_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 470
    return-void
.end method

.method private initDietView()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->dietPopView:Lcom/boohee/myview/DietPopView;

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/boohee/myview/DietPopView;->init(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->dietPopView:Lcom/boohee/myview/DietPopView;

    new-instance v1, Lcom/boohee/record/DietSportCalendarActivity$7;

    invoke-direct {v1, p0}, Lcom/boohee/record/DietSportCalendarActivity$7;-><init>(Lcom/boohee/record/DietSportCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/DietPopView;->setOnDateClickListener(Lcom/boohee/myview/DietPopView$OnDateClickListener;)V

    .line 315
    return-void
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
    .line 972
    .local p1, recordPhotos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getEditType()I

    move-result v0

    .line 973
    .local v0, editType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getRecordPhoto()Lcom/boohee/model/RecordPhoto;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 974
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getRecordPhoto()Lcom/boohee/model/RecordPhoto;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getRecordPhoto()Lcom/boohee/model/RecordPhoto;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 976
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 977
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getIndex()I

    move-result v1

    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getRecordPhoto()Lcom/boohee/model/RecordPhoto;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 978
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 979
    invoke-virtual {p2}, Lcom/boohee/one/event/PhotoDietEvent;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 12
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
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 655
    const v9, 0x7f0e03d0

    invoke-virtual {p2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 656
    .local v4, rl_meal:Landroid/widget/RelativeLayout;
    const v9, 0x7f0e00d3

    invoke-virtual {p2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 657
    .local v7, tv_name:Landroid/widget/TextView;
    const v9, 0x7f0e00d6

    invoke-virtual {p2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 658
    .local v6, tv_calory:Landroid/widget/TextView;
    const v9, 0x7f0e043c

    invoke-virtual {p2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 659
    .local v1, ll_list:Landroid/widget/LinearLayout;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    iget-object v9, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 660
    const/16 v9, 0x8

    invoke-virtual {p2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 661
    const/4 v9, 0x0

    iput v9, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSportCalory:F

    .line 686
    :goto_0
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->refreshCalory()V

    .line 687
    iget-object v9, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {v9}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 688
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v9

    new-instance v10, Lcom/boohee/one/event/CanCaloryEvent;

    invoke-direct {v10}, Lcom/boohee/one/event/CanCaloryEvent;-><init>()V

    iget v11, p0, Lcom/boohee/record/DietSportCalendarActivity;->canCalory:I

    invoke-virtual {v10, v11}, Lcom/boohee/one/event/CanCaloryEvent;->setCalory(I)Lcom/boohee/one/event/CanCaloryEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 690
    :cond_1
    new-instance v9, Lcom/boohee/record/DietSportCalendarActivity$11;

    invoke-direct {v9, p0, p1}, Lcom/boohee/record/DietSportCalendarActivity$11;-><init>(Lcom/boohee/record/DietSportCalendarActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    return-void

    .line 663
    :cond_2
    invoke-virtual {p2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 664
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 665
    const-string v9, "\u8fd0\u52a8"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    const/4 v5, 0x0

    .line 667
    .local v5, totalCalory:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 668
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordSport;

    .line 669
    .local v3, recordSport:Lcom/boohee/model/RecordSport;
    iget v9, v3, Lcom/boohee/model/RecordSport;->calory:F

    add-float/2addr v5, v9

    .line 670
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_4

    move v9, v10

    :goto_2
    invoke-direct {p0, v0, v3, v9}, Lcom/boohee/record/DietSportCalendarActivity;->getSportItemView(ILcom/boohee/model/RecordSport;Z)Landroid/view/View;

    move-result-object v8

    .line 671
    .local v8, view:Landroid/view/View;
    if-eqz v8, :cond_3

    .line 672
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 667
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v8           #view:Landroid/view/View;
    :cond_4
    move v9, v11

    .line 670
    goto :goto_2

    .line 675
    .end local v3           #recordSport:Lcom/boohee/model/RecordSport;
    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v9, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_8

    .line 676
    iget-object v9, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/VideoSportRecord;

    .line 677
    .local v2, record:Lcom/boohee/model/VideoSportRecord;
    iget v9, v2, Lcom/boohee/model/VideoSportRecord;->calory:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    .line 678
    iget-object v9, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_7

    move v9, v10

    :goto_4
    invoke-direct {p0, v0, v2, v9}, Lcom/boohee/record/DietSportCalendarActivity;->getVideoSportItemView(ILcom/boohee/model/VideoSportRecord;Z)Landroid/view/View;

    move-result-object v8

    .line 679
    .restart local v8       #view:Landroid/view/View;
    if-eqz v8, :cond_6

    .line 680
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 675
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v8           #view:Landroid/view/View;
    :cond_7
    move v9, v11

    .line 678
    goto :goto_4

    .line 683
    .end local v2           #record:Lcom/boohee/model/VideoSportRecord;
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5927\u5361"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iput v5, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSportCalory:F

    goto/16 :goto_0
.end method

.method private initSportData(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/VideoSportRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/RecordSport;>;"
    .local p2, videoRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/VideoSportRecord;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 551
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 552
    const/4 v2, 0x0

    iput v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSportCalory:F

    .line 554
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_record:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 556
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_record_null:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 558
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/RecordSport;

    .line 559
    .local v1, sportFood:Lcom/boohee/model/RecordSport;
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    .end local v0           #i:I
    .end local v1           #sportFood:Lcom/boohee/model/RecordSport;
    :cond_0
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 564
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_record:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_record_null:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 569
    :cond_1
    return-void
.end method

.method private initToolsBar()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 251
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030234

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, toolbar_diet_sport:Landroid/view/View;
    const v2, 0x7f0e06d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_date_select:Landroid/widget/LinearLayout;

    .line 253
    const v2, 0x7f0e031c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->txt_date:Landroid/widget/TextView;

    .line 254
    const v2, 0x7f0e06d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->backToday:Landroid/widget/TextView;

    .line 255
    const v2, 0x7f0e0174

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->indicator:Landroid/view/View;

    .line 256
    invoke-virtual {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 257
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 258
    .local v0, layoutParams:Landroid/support/v7/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 259
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_date_select:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/boohee/record/DietSportCalendarActivity$5;

    invoke-direct {v3, p0}, Lcom/boohee/record/DietSportCalendarActivity$5;-><init>(Lcom/boohee/record/DietSportCalendarActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->backToday:Landroid/widget/TextView;

    new-instance v3, Lcom/boohee/record/DietSportCalendarActivity$6;

    invoke-direct {v3, p0}, Lcom/boohee/record/DietSportCalendarActivity$6;-><init>(Lcom/boohee/record/DietSportCalendarActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void
.end method

.method private intBudgetCalory()V
    .locals 3

    .prologue
    .line 336
    new-instance v1, Lcom/boohee/myview/MineHeadViewFactory;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, v2}, Lcom/boohee/myview/MineHeadViewFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->factory:Lcom/boohee/myview/MineHeadViewFactory;

    .line 337
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v0

    .line 338
    .local v0, user:Lcom/boohee/model/User;
    iget v1, v0, Lcom/boohee/model/User;->target_calory:I

    int-to-float v1, v1

    iput v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->budgetCalory:F

    .line 339
    iget v1, v0, Lcom/boohee/model/User;->target_weight:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->isLoseWeight:Z

    .line 340
    return-void

    .line 339
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

    .line 847
    iget v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalBreakfastCalory:F

    iget v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalLunchCalory:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalDinnerCalory:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksBreakfastCalory:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksLunchCalory:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksDinnerCalory:F

    add-float v1, v3, v4

    .line 848
    .local v1, totalDietCalory:F
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->videoSportRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int v2, v3, v4

    .line 850
    .local v2, totalRecordSize:I
    if-lez v2, :cond_0

    .line 851
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_record:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 852
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_record_null:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 857
    :goto_0
    iget-boolean v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->isLoseWeight:Z

    if-eqz v3, :cond_1

    .line 858
    iget v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->budgetCalory:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->canCalory:I

    .line 862
    :goto_1
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 863
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_today_analysis:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 867
    :goto_2
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_calory_distribute:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 868
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->factory:Lcom/boohee/myview/MineHeadViewFactory;

    const/4 v4, 0x2

    iget v5, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSportCalory:F

    invoke-virtual {v3, v4, v1, v5}, Lcom/boohee/myview/MineHeadViewFactory;->createHeadView(IFF)Landroid/view/View;

    move-result-object v0

    .line 869
    .local v0, header_calory:Landroid/view/View;
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_calory_distribute:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 870
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->factory:Lcom/boohee/myview/MineHeadViewFactory;

    invoke-virtual {v3, v0}, Lcom/boohee/myview/MineHeadViewFactory;->runAnimation(Landroid/view/View;)V

    .line 871
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    const-string v4, "%.0f"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%.0f"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSportCalory:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/boohee/record/DietSportCalendarActivity;->saveCaloryRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-void

    .line 854
    .end local v0           #header_calory:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_record_null:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 855
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_record:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 860
    :cond_1
    iget v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->budgetCalory:F

    iget v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSportCalory:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->canCalory:I

    goto :goto_1

    .line 865
    :cond_2
    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_today_analysis:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private refreshDietAndSport(Ljava/util/Date;)V
    .locals 2
    .parameter "date"

    .prologue
    .line 318
    const-string v0, "yyyy-MM-dd"

    invoke-static {p1, v0}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->txt_date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4eca\u5929"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p0}, Lcom/boohee/record/DietSportCalendarActivity;->clearList()V

    .line 321
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->refreshCalory()V

    .line 322
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getEatings()V

    .line 323
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getActivities()V

    .line 324
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    goto :goto_0
.end method

.method private saveCaloryRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "record_on"
    .parameter "totalDietCalory"
    .parameter "totalSportCalory"

    .prologue
    .line 1079
    invoke-static {p1}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1080
    new-instance v0, Lcom/boohee/model/LocalCaloryRecord;

    invoke-direct {v0, p1, p2, p3}, Lcom/boohee/model/LocalCaloryRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    .local v0, caloryRecord:Lcom/boohee/model/LocalCaloryRecord;
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v2, "today_calory"

    invoke-static {v0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getCacheTime()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1083
    .end local v0           #caloryRecord:Lcom/boohee/model/LocalCaloryRecord;
    :cond_0
    return-void
.end method

.method private showHighLight()V
    .locals 5

    .prologue
    .line 219
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->txt_date:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 248
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    new-instance v1, Lcom/boohee/myview/highlight/HighLight;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, v2}, Lcom/boohee/myview/highlight/HighLight;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e06d1

    const v3, 0x7f030233

    new-instance v4, Lcom/boohee/record/DietSportCalendarActivity$3;

    invoke-direct {v4, p0}, Lcom/boohee/record/DietSportCalendarActivity$3;-><init>(Lcom/boohee/record/DietSportCalendarActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/boohee/myview/highlight/HighLight;->addHighLight(IILcom/boohee/myview/highlight/HighLight$OnPosCallback;)Lcom/boohee/myview/highlight/HighLight;

    move-result-object v1

    const v2, 0x7f0e07c5

    const v3, 0x7f030230

    new-instance v4, Lcom/boohee/record/DietSportCalendarActivity$2;

    invoke-direct {v4, p0}, Lcom/boohee/record/DietSportCalendarActivity$2;-><init>(Lcom/boohee/record/DietSportCalendarActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/boohee/myview/highlight/HighLight;->addHighLight(IILcom/boohee/myview/highlight/HighLight$OnPosCallback;)Lcom/boohee/myview/highlight/HighLight;

    move-result-object v0

    .line 238
    .local v0, highLight:Lcom/boohee/myview/highlight/HighLight;
    invoke-virtual {v0}, Lcom/boohee/myview/highlight/HighLight;->show()V

    .line 239
    new-instance v1, Lcom/boohee/record/DietSportCalendarActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/record/DietSportCalendarActivity$4;-><init>(Lcom/boohee/record/DietSportCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/highlight/HighLight;->setOnHighLightClickListener(Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0           #highLight:Lcom/boohee/myview/highlight/HighLight;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public clearList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 347
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 348
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 351
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 352
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 353
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 354
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 358
    iput v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalBreakfastCalory:F

    .line 359
    iput v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalLunchCalory:F

    .line 360
    iput v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalDinnerCalory:F

    .line 361
    iput v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksBreakfastCalory:F

    .line 362
    iput v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksLunchCalory:F

    .line 363
    iput v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSnacksDinnerCalory:F

    .line 364
    iput v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->totalSportCalory:F

    .line 365
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
    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 393
    :goto_0
    return-void

    .line 371
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_foodandsport_breakfast"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 375
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_foodandsport_lunch"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 379
    :sswitch_2
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_foodandsport_dinner"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/boohee/food/AddFoodListActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 383
    :sswitch_3
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_nav_snacks:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/boohee/record/DietSportCalendarActivity;->createPopwindow(Landroid/view/View;)V

    goto :goto_0

    .line 386
    :sswitch_4
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/food/AddSportListActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :sswitch_5
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "tool_dailyanalyze"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e011d -> :sswitch_5
        0x7f0e0501 -> :sswitch_0
        0x7f0e0502 -> :sswitch_1
        0x7f0e0503 -> :sswitch_2
        0x7f0e0504 -> :sswitch_3
        0x7f0e0505 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/boohee/record/DietSportCalendarActivity;->setContentView(I)V

    .line 166
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 167
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->mCache:Lcom/boohee/one/cache/FileCache;

    .line 168
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->initToolsBar()V

    .line 169
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->initDate()V

    .line 171
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->intBudgetCalory()V

    .line 172
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->refreshCalory()V

    .line 173
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getEatings()V

    .line 174
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getActivities()V

    .line 175
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->initDietView()V

    .line 176
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 181
    invoke-virtual {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 876
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 877
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 878
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 879
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/ConstEvent;)V
    .locals 2
    .parameter "constEvent"

    .prologue
    .line 1028
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/boohee/one/event/ConstEvent;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/boohee/record/DietSportCalendarActivity;->clearList()V

    .line 1030
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->refreshCalory()V

    .line 1031
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getEatings()V

    .line 1032
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->getActivities()V

    .line 1034
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/DietEvent;)V
    .locals 4
    .parameter "eventEditDiet"

    .prologue
    .line 887
    invoke-virtual {p1}, Lcom/boohee/one/event/DietEvent;->getTimeType()I

    move-result v0

    .line 888
    .local v0, timeType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 890
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 892
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 893
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 894
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 895
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 896
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 897
    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 898
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 899
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_snacks_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 900
    :cond_4
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 901
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 902
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_snacks_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 903
    :cond_5
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/DietEvent;)V

    .line 905
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_snacks_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/boohee/one/event/PhotoDietEvent;)V
    .locals 4
    .parameter "eventPhotoEditDiet"

    .prologue
    .line 915
    invoke-virtual {p1}, Lcom/boohee/one/event/PhotoDietEvent;->getTimeType()I

    move-result v0

    .line 916
    .local v0, timeType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 917
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 918
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 920
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 921
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 922
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 923
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 924
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 925
    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 926
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 927
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_snacks_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 928
    :cond_4
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 929
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 930
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_snacks_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 931
    :cond_5
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/boohee/record/DietSportCalendarActivity;->initPhotoDietList(Ljava/util/ArrayList;Lcom/boohee/one/event/PhotoDietEvent;)V

    .line 933
    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_snacks_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initDietCardView(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/boohee/one/event/SportEvent;)V
    .locals 5
    .parameter "sportEvent"

    .prologue
    .line 1006
    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getEditType()I

    move-result v0

    .line 1007
    .local v0, editType:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1008
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1009
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->getIndexFromList(Ljava/util/ArrayList;Lcom/boohee/model/RecordSport;)I

    move-result v1

    .line 1010
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1011
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    .end local v1           #index:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->ll_card_sport:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v3}, Lcom/boohee/record/DietSportCalendarActivity;->initSportCardView(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 1025
    return-void

    .line 1013
    .restart local v1       #index:I
    :cond_1
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1016
    .end local v1           #index:I
    :cond_2
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1018
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1019
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1020
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getRecordSport()Lcom/boohee/model/RecordSport;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1021
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/boohee/one/event/SportEvent;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 15
    .parameter "item"

    .prologue
    .line 187
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-super/range {p0 .. p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "tool_foodandsport_copy"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/record/HistoryRecordActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "tool_foodandsport_abstract"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/record/DietSportCalendarActivity;->record_on:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/boohee/record/DietSportCalendarActivity;->sportList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/boohee/record/DietSportCalendarActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/boohee/record/DietSportCalendarActivity;->lunchPhotoList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/boohee/record/DietSportCalendarActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    iget-object v14, p0, Lcom/boohee/record/DietSportCalendarActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v14}, Lcom/boohee/food/SummaryActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_foodandsport_barchart"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/boohee/record/DietSportCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/record/DietChartActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 187
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
    .line 1070
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onWindowFocusChanged(Z)V

    .line 1071
    if-eqz p1, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/boohee/record/DietSportCalendarActivity;->checkGuide()V

    .line 1074
    :cond_0
    return-void
.end method
