.class public Lcom/prolificinteractive/materialcalendarview/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v2

    .line 55
    .local v2, year:I
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 56
    .local v1, month:I
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result v0

    .line 57
    .local v0, day:I
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 58
    invoke-virtual {p1, v2, v1, v0}, Ljava/util/Calendar;->set(III)V

    .line 59
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 60
    return-void
.end method

.method public static getDay(Ljava/util/Calendar;)I
    .locals 1
    .parameter "calendar"

    .prologue
    .line 71
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDayOfWeek(Ljava/util/Calendar;)I
    .locals 1
    .parameter "calendar"

    .prologue
    .line 75
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Ljava/util/Calendar;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 35
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {v0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 36
    return-object v0
.end method

.method public static getInstance(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1
    .parameter "date"

    .prologue
    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 23
    .local v0, calendar:Ljava/util/Calendar;
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 26
    :cond_0
    invoke-static {v0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 27
    return-object v0
.end method

.method public static getMonth(Ljava/util/Calendar;)I
    .locals 1
    .parameter "calendar"

    .prologue
    .line 67
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getYear(Ljava/util/Calendar;)I
    .locals 1
    .parameter "calendar"

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static setToFirstDay(Ljava/util/Calendar;)V
    .locals 3
    .parameter "calendar"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v1

    .line 44
    .local v1, year:I
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v0

    .line 45
    .local v0, month:I
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Ljava/util/Calendar;->set(III)V

    .line 47
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 48
    return-void
.end method
