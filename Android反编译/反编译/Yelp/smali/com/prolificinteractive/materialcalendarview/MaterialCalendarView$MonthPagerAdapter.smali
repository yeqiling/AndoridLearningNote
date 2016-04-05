.class Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthPagerAdapter"
.end annotation


# instance fields
.field private callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

.field private color:Ljava/lang/Integer;

.field private final currentViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/MonthView;",
            ">;"
        }
    .end annotation
.end field

.field private dateTextAppearance:Ljava/lang/Integer;

.field private dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

.field private decoratorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DecoratorResult;",
            ">;"
        }
    .end annotation
.end field

.field private decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private firstDayOfTheWeek:I

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private final months:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private showOtherDates:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field private final view:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

.field private weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

.field private weekDayTextAppearance:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 2
    .parameter
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 918
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 903
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    .line 904
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->color:Ljava/lang/Integer;

    .line 905
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 906
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 907
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->showOtherDates:Ljava/lang/Boolean;

    .line 908
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 909
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 910
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 911
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 912
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 913
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decorators:Ljava/util/List;

    .line 914
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 915
    const/4 v0, 0x1

    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->firstDayOfTheWeek:I

    .line 919
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->view:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 920
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    .line 922
    invoke-virtual {p0, v1, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 923
    return-void
.end method

.method synthetic constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 897
    invoke-direct {p0, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    return-void
.end method

.method private getValidSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .parameter "date"

    .prologue
    .line 1158
    if-nez p1, :cond_1

    .line 1159
    const/4 p1, 0x0

    .line 1167
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1161
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    goto :goto_0

    .line 1164
    :cond_2
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 1036
    move-object v0, p3

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1037
    .local v0, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1039
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getDateTextAppearance()I
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->firstDayOfTheWeek:I

    return v0
.end method

.method public getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I
    .locals 4
    .parameter "day"

    .prologue
    .line 959
    if-nez p1, :cond_1

    .line 960
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 974
    :cond_0
    :goto_0
    return v0

    .line 962
    :cond_1
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    const/4 v0, 0x0

    goto :goto_0

    .line 965
    :cond_2
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, v2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 966
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 968
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 969
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 970
    .local v1, month:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 968
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 974
    .end local v1           #month:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :cond_5
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    goto :goto_0
.end method

.method public getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .parameter "position"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 5
    .parameter "object"

    .prologue
    const/4 v3, -0x2

    .line 979
    instance-of v4, p1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    if-nez v4, :cond_1

    move v0, v3

    .line 991
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v2, p1

    .line 982
    check-cast v2, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 983
    .local v2, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->getMonth()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    .line 984
    .local v1, month:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    if-nez v1, :cond_2

    move v0, v3

    .line 985
    goto :goto_0

    .line 987
    :cond_2
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 988
    .local v0, index:I
    if-gez v0, :cond_0

    move v0, v3

    .line 989
    goto :goto_0
.end method

.method public getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getShowOtherDates()Z
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->showOtherDates:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected getWeekDayTextAppearance()I
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "position"

    .prologue
    .line 996
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 997
    .local v0, month:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->firstDayOfTheWeek:I

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->booheeCalendarDay:Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;
    invoke-static {v4}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$1100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/prolificinteractive/materialcalendarview/MonthView;-><init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;ILcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;)V

    .line 999
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 1000
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    .line 1001
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V

    .line 1002
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onDayClickListener:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;
    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$1200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setOnDayClickListener(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;)V

    .line 1003
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->color:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1004
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->color:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectionColor(I)V

    .line 1006
    :cond_0
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1007
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDateTextAppearance(I)V

    .line 1009
    :cond_1
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 1010
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayTextAppearance(I)V

    .line 1012
    :cond_2
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->showOtherDates:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 1013
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->showOtherDates:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setShowOtherDates(Z)V

    .line 1015
    :cond_3
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1016
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1017
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1019
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1020
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1022
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decoratorResults:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDayViewDecorators(Ljava/util/List;)V

    .line 1024
    return-object v1
.end method

.method public invalidateDays()V
    .locals 3

    .prologue
    .line 948
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 949
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->booheeCalendarDay:Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;
    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$1100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->invalidateDays(Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;)V

    goto :goto_0

    .line 951
    .end local v1           #monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_0
    return-void
.end method

.method public invalidateDecorators()V
    .locals 6

    .prologue
    .line 933
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decorators:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decorators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 945
    :cond_0
    return-void

    .line 934
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decoratorResults:Ljava/util/List;

    .line 935
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decorators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;

    .line 936
    .local v0, decorator:Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;

    invoke-direct {v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;-><init>()V

    .line 937
    .local v1, facade:Lcom/prolificinteractive/materialcalendarview/DayViewFacade;
    invoke-interface {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;->decorate(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    .line 938
    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 939
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decoratorResults:Ljava/util/List;

    new-instance v5, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;

    invoke-direct {v5, v0, v1}, Lcom/prolificinteractive/materialcalendarview/DecoratorResult;-><init>(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 942
    .end local v0           #decorator:Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;
    .end local v1           #facade:Lcom/prolificinteractive/materialcalendarview/DayViewFacade;
    :cond_3
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 943
    .local v3, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decoratorResults:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDayViewDecorators(Ljava/util/List;)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 1043
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V
    .locals 3
    .parameter "callbacks"

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    .line 1048
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1049
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V

    goto :goto_0

    .line 1051
    .end local v1           #monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_0
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 3
    .parameter "taId"

    .prologue
    .line 1061
    if-nez p1, :cond_1

    .line 1068
    :cond_0
    return-void

    .line 1064
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dateTextAppearance:Ljava/lang/Integer;

    .line 1065
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1066
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDateTextAppearance(I)V

    goto :goto_0
.end method

.method public setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V
    .locals 3
    .parameter "formatter"

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->dayFormatter:Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;

    .line 1086
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1087
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/DayFormatter;)V

    goto :goto_0

    .line 1089
    .end local v1           #monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_0
    return-void
.end method

.method public setDecorators(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 927
    .local p1, decorators:Ljava/util/List;,"Ljava/util/List<Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->decorators:Ljava/util/List;

    .line 929
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->invalidateDecorators()V

    goto :goto_0
.end method

.method public setFirstDayOfWeek(I)V
    .locals 3
    .parameter "day"

    .prologue
    .line 1028
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->firstDayOfTheWeek:I

    .line 1029
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1030
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->firstDayOfTheWeek:I

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setFirstDayOfWeek(I)V

    goto :goto_0

    .line 1032
    .end local v1           #monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_0
    return-void
.end method

.method public setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 8
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v7, 0x1

    .line 1106
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1107
    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1108
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1109
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1110
    invoke-virtual {v1, p2}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 1113
    .end local v1           #monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_0
    if-nez p1, :cond_1

    .line 1114
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1115
    .local v3, worker:Ljava/util/Calendar;
    const/16 v5, -0xc8

    invoke-virtual {v3, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 1116
    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p1

    .line 1119
    .end local v3           #worker:Ljava/util/Calendar;
    :cond_1
    if-nez p2, :cond_2

    .line 1120
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1121
    .restart local v3       #worker:Ljava/util/Calendar;
    const/16 v5, 0xc8

    invoke-virtual {v3, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 1122
    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object p2

    .line 1125
    .end local v3           #worker:Ljava/util/Calendar;
    :cond_2
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1126
    .restart local v3       #worker:Ljava/util/Calendar;
    invoke-virtual {p1, v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    .line 1127
    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->setToFirstDay(Ljava/util/Calendar;)V

    .line 1128
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1129
    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v4

    .line 1130
    .local v4, workingMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    :goto_1
    invoke-virtual {p2, v4}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1131
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->months:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 1133
    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Calendar;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v4

    goto :goto_1

    .line 1135
    :cond_3
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1136
    .local v2, prevDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->notifyDataSetChanged()V

    .line 1137
    invoke-virtual {p0, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1138
    if-eqz v2, :cond_4

    .line 1139
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v2, v5}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1140
    iget-object v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    iget-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-interface {v5, v6}, Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;->onDateChanged(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1143
    :cond_4
    return-void
.end method

.method public setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 5
    .parameter "date"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1146
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1147
    .local v2, prevDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getValidSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v3

    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 1148
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1149
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v1, v3}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0

    .line 1152
    .end local v1           #monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_0
    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    .line 1153
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->callbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;->onDateChanged(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 1155
    :cond_1
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 1054
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->color:Ljava/lang/Integer;

    .line 1055
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1056
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setSelectionColor(I)V

    goto :goto_0

    .line 1058
    .end local v1           #monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_0
    return-void
.end method

.method public setShowOtherDates(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1071
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->showOtherDates:Ljava/lang/Boolean;

    .line 1072
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1073
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setShowOtherDates(Z)V

    goto :goto_0

    .line 1075
    .end local v1           #monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_0
    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 3
    .parameter "formatter"

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayFormatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 1079
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1080
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    goto :goto_0

    .line 1082
    .end local v1           #monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    :cond_0
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 3
    .parameter "taId"

    .prologue
    .line 1096
    if-nez p1, :cond_1

    .line 1103
    :cond_0
    return-void

    .line 1099
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->weekDayTextAppearance:Ljava/lang/Integer;

    .line 1100
    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->currentViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MonthView;

    .line 1101
    .local v1, monthView:Lcom/prolificinteractive/materialcalendarview/MonthView;
    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MonthView;->setWeekDayTextAppearance(I)V

    goto :goto_0
.end method
