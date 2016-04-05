.class Lcom/prolificinteractive/materialcalendarview/MonthView;
.super Landroid/widget/LinearLayout;
.source "MonthView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;
    }
.end annotation


# static fields
.field protected static final DEFAULT_DAYS_IN_WEEK:I = 0x7

.field protected static final DEFAULT_MAX_WEEKS:I = 0x6

.field protected static final DEFAULT_MONTH_TILE_HEIGHT:I = 0x7


# instance fields
.field private callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

.field private final decoratorResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DecoratorResult;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfWeek:I

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final month:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final monthDayViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/BooheeDayView;",
            ">;"
        }
    .end annotation
.end field

.field private onDayClickListener:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;

.field private selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private showOtherDates:Z

.field private final tempWorkingCalendar:Ljava/util/Calendar;

.field private final weekDayViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/WeekDayView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V
    .locals 1
    .parameter "context"
    .parameter "month"
    .parameter "firstDayOfWeek"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/prolificinteractive/materialcalendarview/MonthView;-><init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;ILcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;ILcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;)V
    .locals 13
    .parameter "context"
    .parameter "month"
    .parameter "firstDayOfWeek"
    .parameter "booheeCalendarDay"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    .line 39
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    .line 44
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    .line 46
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 47
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 48
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 50
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    .line 52
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->decoratorResults:Ljava/util/ArrayList;

    .line 60
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->month:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 61
    move/from16 v0, p3

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->firstDayOfWeek:I

    .line 63
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setOrientation(I)V

    .line 65
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setClipChildren(Z)V

    .line 66
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setClipToPadding(Z)V

    .line 68
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 70
    .local v1, calendar:Ljava/util/Calendar;
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->makeRow(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 71
    .local v7, row:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    const/4 v9, 0x7

    if-ge v5, v9, :cond_0

    .line 72
    new-instance v8, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v9

    invoke-direct {v8, p1, v9}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v8, weekDayView:Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    iget-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x3f80

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    .end local v8           #weekDayView:Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    :cond_0
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 80
    const/4 v6, 0x0

    .local v6, r:I
    :goto_1
    const/4 v9, 0x6

    if-ge v6, v9, :cond_3

    .line 81
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->makeRow(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 82
    const/4 v5, 0x0

    :goto_2
    const/4 v9, 0x7

    if-ge v5, v9, :cond_2

    .line 83
    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v2

    .line 84
    .local v2, day:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    if-eqz p4, :cond_1

    .line 85
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->getDrawableId(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v9

    iput v9, v2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomDrawableId:I

    .line 86
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->getColorId(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v9

    iput v9, v2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->bottomLineColorId:I

    .line 88
    :cond_1
    new-instance v3, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    invoke-direct {v3, p1, v2}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;-><init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 89
    .local v3, dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v4, dayViewLP:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {v3, p0}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x3f80

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 82
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 80
    .end local v2           #day:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .end local v3           #dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    .end local v4           #dayViewLP:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 99
    :cond_3
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 100
    return-void
.end method

.method private invalidateDecorators()V
    .locals 7

    .prologue
    .line 225
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-direct {v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;-><init>()V

    .line 226
    .local v1, facadeAccumulator:Lcom/prolificinteractive/materialcalendarview/DayViewFacade;
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .line 227
    .local v0, dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->reset()V

    .line 228
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;

    .line 229
    .local v4, result:Lcom/prolificinteractive/materialcalendarview/DecoratorResult;
    iget-object v5, v4, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;->decorator:Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;->shouldDecorate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    iget-object v5, v4, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;->result:Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-virtual {v5, v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->applyTo(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    goto :goto_1

    .line 233
    .end local v4           #result:Lcom/prolificinteractive/materialcalendarview/DecoratorResult;
    :cond_1
    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->applyFacade(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    goto :goto_0

    .line 235
    .end local v0           #dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private static makeRow(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 7
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 112
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v1, row:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 116
    .local v2, v:Landroid/view/View;
    const-string v3, "#60000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x1

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-object v1
.end method

.method private resetAndGetWorkingCalendar()Ljava/util/Calendar;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->month:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 155
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    iget v5, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->firstDayOfWeek:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 156
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    invoke-static {v4}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v1

    .line 157
    .local v1, dow:I
    iget v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->firstDayOfWeek:I

    sub-int v0, v4, v1

    .line 159
    .local v0, delta:I
    iget-boolean v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    if-eqz v4, :cond_3

    if-ltz v0, :cond_2

    .line 160
    .local v2, removeRow:Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 161
    add-int/lit8 v0, v0, -0x7

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 164
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->tempWorkingCalendar:Ljava/util/Calendar;

    return-object v3

    .end local v2           #removeRow:Z
    :cond_2
    move v2, v3

    .line 159
    goto :goto_0

    :cond_3
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private updateUi()V
    .locals 7

    .prologue
    .line 215
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->month:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v4}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v3

    .line 216
    .local v3, ourMonth:I
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .line 217
    .local v1, dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 218
    .local v0, day:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget-boolean v5, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v4, v6}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v6

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v4

    if-ne v4, v3, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v5, v6, v4}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setupSelection(ZZZ)V

    .line 219
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setChecked(Z)V

    goto :goto_0

    .line 218
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 221
    .end local v0           #day:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .end local v1           #dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    :cond_1
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->postInvalidate()V

    .line 222
    return-void
.end method


# virtual methods
.method public getMonth()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->month:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getShowOtherDates()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    return v0
.end method

.method public invalidateDays(Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;)V
    .locals 4
    .parameter "booheeCalendarDay"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 277
    :cond_0
    return-void

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .line 273
    .local v1, dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 274
    .local v0, day:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->getDrawableId(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setImageTag(I)V

    .line 275
    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->getColorId(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setLineColor(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 243
    instance-of v4, p1, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    if-eqz v4, :cond_2

    .line 244
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .line 245
    .local v3, other:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setChecked(Z)V

    goto :goto_0

    .end local v3           #other:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    :cond_0
    move-object v1, p1

    .line 247
    check-cast v1, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .line 248
    .local v1, dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setChecked(Z)V

    .line 250
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    .line 254
    .local v0, date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 256
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    if-eqz v4, :cond_1

    .line 257
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;->onDateChanged(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 260
    :cond_1
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->onDayClickListener:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;

    if-eqz v4, :cond_2

    .line 261
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->onDayClickListener:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;

    check-cast p1, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .end local p1
    invoke-interface {v4, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;->onClick(Lcom/prolificinteractive/materialcalendarview/BooheeDayView;)V

    .line 264
    .end local v0           #date:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .end local v1           #dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    .line 239
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 3
    .parameter "taId"

    .prologue
    .line 129
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .line 130
    .local v0, dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 132
    .end local v0           #dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    :cond_0
    return-void
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 3
    .parameter "formatter"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .line 195
    .local v0, dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    goto :goto_0

    .line 197
    .end local v0           #dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    :cond_0
    return-void
.end method

.method setDayViewDecorators(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DecoratorResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/DecoratorResult;>;"
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->decoratorResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->invalidateDecorators()V

    .line 109
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 7
    .parameter "dayOfWeek"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 168
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->firstDayOfWeek:I

    .line 170
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v4, 0x7

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 172
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 173
    .local v2, dayView:Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    invoke-virtual {v2, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setDayOfWeek(Ljava/util/Calendar;)V

    .line 174
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 177
    .end local v2           #dayView:Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    :cond_0
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->resetAndGetWorkingCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 178
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .line 179
    .local v2, dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    .line 180
    .local v1, day:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-virtual {v2, v1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 181
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 184
    .end local v1           #day:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .end local v2           #dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    :cond_1
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    .line 185
    return-void
.end method

.method public setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0
    .parameter "maxDate"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 206
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    .line 207
    return-void
.end method

.method public setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0
    .parameter "minDate"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 201
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    .line 202
    return-void
.end method

.method public setOnDayClickListener(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->onDayClickListener:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;

    .line 268
    return-void
.end method

.method public setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0
    .parameter "cal"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->selection:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 211
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    .line 212
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 148
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->monthDayViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .line 149
    .local v0, dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->setSelectionColor(I)V

    goto :goto_0

    .line 151
    .end local v0           #dayView:Lcom/prolificinteractive/materialcalendarview/BooheeDayView;
    :cond_0
    return-void
.end method

.method public setShowOtherDates(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->showOtherDates:Z

    .line 136
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->updateUi()V

    .line 137
    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 3
    .parameter "formatter"

    .prologue
    .line 188
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 189
    .local v0, dayView:Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    goto :goto_0

    .line 191
    .end local v0           #dayView:Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 3
    .parameter "taId"

    .prologue
    .line 123
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MonthView;->weekDayViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/WeekDayView;

    .line 124
    .local v1, weekDayView:Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MonthView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 126
    .end local v1           #weekDayView:Lcom/prolificinteractive/materialcalendarview/WeekDayView;
    :cond_0
    return-void
.end method
