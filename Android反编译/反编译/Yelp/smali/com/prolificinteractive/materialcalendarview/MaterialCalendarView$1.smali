.class Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;
.super Ljava/lang/Object;
.source "MaterialCalendarView.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;


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
    .line 81
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2
    .parameter "date"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 86
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    #getter for: Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->access$000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;->this$0:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-interface {v0, v1, p1}, Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;->onDateChanged(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 89
    :cond_0
    return-void
.end method
