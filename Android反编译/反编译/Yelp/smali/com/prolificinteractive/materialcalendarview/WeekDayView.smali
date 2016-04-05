.class Lcom/prolificinteractive/materialcalendarview/WeekDayView;
.super Landroid/widget/TextView;
.source "WeekDayView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private dayOfWeek:I

.field private formatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "dayOfWeek"

    .prologue
    const/16 v1, 0x11

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 25
    invoke-virtual {p0, v1}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setGravity(I)V

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 28
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setTextAlignment(I)V

    .line 31
    :cond_0
    invoke-virtual {p0, p2}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setDayOfWeek(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public setDayOfWeek(I)V
    .locals 1
    .parameter "dayOfWeek"

    .prologue
    .line 40
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->dayOfWeek:I

    .line 41
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    invoke-interface {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->format(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public setDayOfWeek(Ljava/util/Calendar;)V
    .locals 1
    .parameter "calendar"

    .prologue
    .line 45
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setDayOfWeek(I)V

    .line 46
    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 35
    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->formatter:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    .line 36
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->dayOfWeek:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/WeekDayView;->setDayOfWeek(I)V

    .line 37
    return-void
.end method
