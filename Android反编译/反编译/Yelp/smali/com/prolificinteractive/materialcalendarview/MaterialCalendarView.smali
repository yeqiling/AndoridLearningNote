.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.super Landroid/widget/FrameLayout;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
    }
.end annotation


# static fields
.field public static final DEFAULT_TILE_SIZE_DP:I = 0x2c

.field private static final DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;


# instance fields
.field private accentColor:I

.field private final adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

.field private arrowColor:I

.field private booheeCalendarDay:Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;

.field private final buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

.field private final buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

.field private currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final dayViewDecorators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private leftArrowMask:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

.field private final monthViewCallbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private onDayClickListener:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;

.field private final pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final pager:Landroid/support/v4/view/ViewPager;

.field private rightArrowMask:Landroid/graphics/drawable/Drawable;

.field private root:Landroid/widget/LinearLayout;

.field private final title:Landroid/widget/TextView;

.field private final titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

.field private topbar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v7, -0x100

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    .line 81
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;

    invoke-direct {v6, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthViewCallbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    .line 92
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;

    invoke-direct {v6, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;

    invoke-direct {v6, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 124
    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 125
    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 130
    iput v8, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    .line 131
    iput v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    .line 144
    invoke-virtual {p0, v8}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipChildren(Z)V

    .line 145
    invoke-virtual {p0, v8}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipToPadding(Z)V

    .line 147
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    .line 148
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    .line 149
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    .line 150
    new-instance v6, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    .line 152
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setupChildren()V

    .line 154
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    iget-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    iget-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    iget-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-direct {v6, v7}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;-><init>(Landroid/widget/TextView;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    .line 159
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    sget-object v7, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    invoke-virtual {v6, v7}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 160
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-direct {v6, p0, p0, v9}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    .line 161
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 162
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 163
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$4;

    invoke-direct {v7, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$4;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    invoke-virtual {v6, v8, v7}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 171
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthViewCallbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    invoke-virtual {v6, v7}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget-object v7, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView:[I

    invoke-virtual {v6, p2, v7, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, a:Landroid/content/res/TypedArray;
    :try_start_0
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_tileSize:I

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 178
    .local v5, tileSize:I
    if-lez v5, :cond_0

    .line 179
    invoke-virtual {p0, v5}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 182
    :cond_0
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_arrowColor:I

    const/high16 v7, -0x100

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setArrowColor(I)V

    .line 186
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_leftArrowMask:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 189
    .local v3, leftMask:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_previous:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 192
    :cond_1
    invoke-virtual {p0, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setLeftArrowMask(Landroid/graphics/drawable/Drawable;)V

    .line 193
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_rightArrowMask:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 196
    .local v4, rightMask:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_next:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 199
    :cond_2
    invoke-virtual {p0, v4}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRightArrowMask(Landroid/graphics/drawable/Drawable;)V

    .line 201
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_selectionColor:I

    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getThemeAccentColor(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 208
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_weekDayLabels:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 209
    .local v1, array:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 210
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v6, v1}, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 213
    :cond_3
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_monthLabels:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_4

    .line 215
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v6, v1}, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 218
    :cond_4
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_headerTextAppearance:I

    sget v7, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_Header:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setHeaderTextAppearance(I)V

    .line 222
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_weekDayTextAppearance:I

    sget v7, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_WeekDay:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 226
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_dateTextAppearance:I

    sget v7, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_Date:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 230
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_showOtherDates:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setShowOtherDates(Z)V

    .line 234
    sget v6, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_firstDayOfWeek:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setFirstDayOfWeek(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    .end local v1           #array:[Ljava/lang/CharSequence;
    .end local v3           #leftMask:Landroid/graphics/drawable/Drawable;
    .end local v4           #rightMask:Landroid/graphics/drawable/Drawable;
    .end local v5           #tileSize:I
    :goto_0
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 245
    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v6}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 246
    return-void

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v6
.end method

.method static synthetic access$000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->booheeCalendarDay:Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onDayClickListener:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$402(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p1
.end method

.method static synthetic access$500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/TitleChanger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method static synthetic access$800(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    return-object v0
.end method

.method private canGoBack()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canGoForward()Z
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getThemeAccentColor(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 824
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 825
    const v0, 0x1010435

    .line 830
    .local v0, colorAttr:I
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 831
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 832
    iget v2, v1, Landroid/util/TypedValue;->data:I

    return v2

    .line 828
    .end local v0           #colorAttr:I
    .end local v1           #outValue:Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "colorAccent"

    const-string v4, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #colorAttr:I
    goto :goto_0
.end method

.method private setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 4
    .parameter "min"
    .parameter "max"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 757
    .local v0, c:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 758
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 759
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v1

    .line 760
    .local v1, position:I
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 761
    return-void
.end method

.method private setupChildren()V
    .locals 11

    .prologue
    const/16 v6, 0x11

    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 249
    const/high16 v3, 0x4230

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v10, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 255
    .local v2, tileSize:I
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    .line 256
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 258
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 260
    .local v0, metrics:Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x7

    mul-int/lit8 v4, v4, 0x9

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 264
    .local v1, p:Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 265
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    .line 268
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 269
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 270
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 271
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 274
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget v4, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_previous:I

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageResource(I)V

    .line 275
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 278
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x40a0

    invoke-direct {v5, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 283
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget v4, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_next:I

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageResource(I)V

    .line 284
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    sget v4, Lcom/prolificinteractive/materialcalendarview/R$id;->mcv_pager:I

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 287
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v10}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 288
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x40e0

    invoke-direct {v5, v8, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-void
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->change(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 314
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setEnabled(Z)V

    .line 316
    return-void
.end method


# virtual methods
.method public addDecorator(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 2
    .parameter "decorator"

    .prologue
    .line 868
    if-nez p1, :cond_0

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDecorators(Ljava/util/List;)V

    goto :goto_0
.end method

.method public addDecorators(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 855
    .local p1, decorators:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;>;"
    if-nez p1, :cond_0

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 860
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDecorators(Ljava/util/List;)V

    goto :goto_0
.end method

.method public varargs addDecorators([Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 1
    .parameter "decorators"

    .prologue
    .line 864
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addDecorators(Ljava/util/Collection;)V

    .line 865
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 479
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 752
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 753
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 747
    return-void
.end method

.method public getArrowColor()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    return v0
.end method

.method public getCurrentDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getLeftArrowMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->leftArrowMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMaximumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getMinimumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getRightArrowMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rightArrowMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionColor()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    return v0
.end method

.method public getShowOtherDates()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getShowOtherDates()Z

    move-result v0

    return v0
.end method

.method public getTileSize()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getTopbarVisible()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateDays()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->invalidateDays()V

    .line 1203
    :cond_0
    return-void
.end method

.method public invalidateDecorators()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->invalidateDecorators()V

    .line 887
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 730
    move-object v0, p1

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    .line 731
    .local v0, ss:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 732
    iget v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 733
    iget v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 734
    iget v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 735
    iget-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setShowOtherDates(Z)V

    .line 736
    iget-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v2, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 737
    iget-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 738
    iget v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setFirstDayOfWeek(I)V

    .line 739
    iget v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileSizePx:I

    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 740
    iget-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTopbarVisible(Z)V

    .line 741
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 714
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 715
    .local v0, ss:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectionColor()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 716
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getDateTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 717
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getWeekDayTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 718
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getShowOtherDates()Z

    move-result v1

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    .line 719
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getMinimumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 720
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getMaximumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 721
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 722
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getFirstDayOfWeek()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->firstDayOfWeek:I

    .line 723
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTileSize()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->tileSizePx:I

    .line 724
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTopbarVisible()Z

    move-result v1

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->topbarVisible:Z

    .line 725
    return-object v0
.end method

.method public removeDecorator(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 2
    .parameter "decorator"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 882
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 883
    return-void
.end method

.method public removeDecorators()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 877
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 878
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 410
    :cond_0
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    .line 411
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColor(I)V

    .line 412
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColor(I)V

    .line 413
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidate()V

    goto :goto_0
.end method

.method public setBooheeCalendarDay(Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;)V
    .locals 0
    .parameter "booheeCalendarDay"

    .prologue
    .line 890
    if-nez p1, :cond_0

    .line 892
    :goto_0
    return-void

    .line 891
    :cond_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->booheeCalendarDay:Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;

    goto :goto_0
.end method

.method public setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2
    .parameter "day"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 528
    if-nez p1, :cond_0

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v0

    .line 532
    .local v0, index:I
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 533
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    goto :goto_0
.end method

.method public setCurrentDate(Ljava/util/Calendar;)V
    .locals 1
    .parameter "calendar"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 507
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 508
    return-void
.end method

.method public setCurrentDate(Ljava/util/Date;)V
    .locals 1
    .parameter "date"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 514
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 515
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDateTextAppearance(I)V

    .line 458
    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .end local p1
    :cond_0
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    .line 621
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .parameter "day"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setFirstDayOfWeek(I)V

    .line 845
    return-void
.end method

.method public setHeaderTextAppearance(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 451
    return-void
.end method

.method public setLeftArrowMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->leftArrowMask:Landroid/graphics/drawable/Drawable;

    .line 428
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    return-void
.end method

.method public setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2
    .parameter "calendar"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 591
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 592
    return-void
.end method

.method public setMaximumDate(Ljava/util/Calendar;)V
    .locals 1
    .parameter "calendar"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 576
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 577
    return-void
.end method

.method public setMaximumDate(Ljava/util/Date;)V
    .locals 1
    .parameter "date"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 583
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 584
    return-void
.end method

.method public setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2
    .parameter "calendar"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 562
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 563
    return-void
.end method

.method public setMinimumDate(Ljava/util/Calendar;)V
    .locals 1
    .parameter "calendar"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 547
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 548
    return-void
.end method

.method public setMinimumDate(Ljava/util/Date;)V
    .locals 1
    .parameter "date"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 554
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 555
    return-void
.end method

.method public setOnDateChangedListener(Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

    .line 301
    return-void
.end method

.method public setOnDayClickListener(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onDayClickListener:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;

    .line 1193
    return-void
.end method

.method public setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    .line 310
    return-void
.end method

.method public setRightArrowMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->rightArrowMask:Landroid/graphics/drawable/Drawable;

    .line 443
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    return-void
.end method

.method public setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1
    .parameter "day"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 500
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 501
    return-void
.end method

.method public setSelectedDate(Ljava/util/Calendar;)V
    .locals 1
    .parameter "calendar"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 485
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 486
    return-void
.end method

.method public setSelectedDate(Ljava/util/Date;)V
    .locals 1
    .parameter "date"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 492
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 493
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 391
    :cond_0
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    .line 392
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setSelectionColor(I)V

    .line 393
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidate()V

    goto :goto_0
.end method

.method public setShowOtherDates(Z)V
    .locals 1
    .parameter "showOtherDates"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setShowOtherDates(Z)V

    .line 603
    return-void
.end method

.method public setTileSize(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTopbarVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v1, p1, 0x7

    mul-int/lit8 v2, p1, 0x8

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 345
    .local v0, p:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-void

    .line 340
    .end local v0           #p:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v1, p1, 0x7

    mul-int/lit8 v2, p1, 0x7

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v0       #p:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method

.method public setTileSizeDp(I)V
    .locals 3
    .parameter "tileSizeDp"

    .prologue
    .line 354
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 357
    return-void
.end method

.method public setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V
    .locals 1
    .parameter "titleFormatter"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .end local p1
    :cond_0
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 661
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    .line 662
    return-void
.end method

.method public setTitleMonths(I)V
    .locals 1
    .parameter "arrayRes"
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end parameter

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleMonths([Ljava/lang/CharSequence;)V

    .line 686
    return-void
.end method

.method public setTitleMonths([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "monthLabels"

    .prologue
    .line 673
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 674
    return-void
.end method

.method public setTopbarVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getTileSize()I

    move-result v0

    .line 697
    .local v0, tileSize:I
    if-eqz p1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    :goto_0
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 703
    return-void

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->topbar:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .end local p1
    :cond_0
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 612
    return-void
.end method

.method public setWeekDayLabels(I)V
    .locals 1
    .parameter "arrayRes"
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end parameter

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayLabels([Ljava/lang/CharSequence;)V

    .line 645
    return-void
.end method

.method public setWeekDayLabels([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "weekDayLabels"

    .prologue
    .line 632
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 633
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setWeekDayTextAppearance(I)V

    .line 465
    return-void
.end method
