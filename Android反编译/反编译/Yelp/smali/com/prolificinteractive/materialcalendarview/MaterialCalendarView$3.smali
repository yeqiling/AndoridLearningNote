.class Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 117
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 121
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleChanger:Lcom/prolificinteractive/materialcalendarview/TitleChanger;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    move-result-object v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$400(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->setPreviousMonth(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 107
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;
    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    #setter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-static {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$402(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 108
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #calls: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    .line 110
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$800(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$800(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-static {v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$400(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;->onMonthChanged(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 113
    :cond_0
    return-void
.end method
